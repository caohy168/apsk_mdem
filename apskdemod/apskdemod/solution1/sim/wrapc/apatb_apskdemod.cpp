#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_demod_datout "../tv/cdatafile/c.apskdemod.autotvin_demod_datout.dat"
#define AUTOTB_TVOUT_demod_datout "../tv/cdatafile/c.apskdemod.autotvout_demod_datout.dat"
// wrapc file define:
#define AUTOTB_TVIN_demodi "../tv/cdatafile/c.apskdemod.autotvin_demodi.dat"
#define AUTOTB_TVOUT_demodi "../tv/cdatafile/c.apskdemod.autotvout_demodi.dat"
// wrapc file define:
#define AUTOTB_TVIN_demodq "../tv/cdatafile/c.apskdemod.autotvin_demodq.dat"
#define AUTOTB_TVOUT_demodq "../tv/cdatafile/c.apskdemod.autotvout_demodq.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_demod_datout "../tv/rtldatafile/rtl.apskdemod.autotvout_demod_datout.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_demodi "../tv/rtldatafile/rtl.apskdemod.autotvout_demodi.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_demodq "../tv/rtldatafile/rtl.apskdemod.autotvout_demodq.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  demod_datout_depth = 0;
  demodi_depth = 0;
  demodq_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{demod_datout " << demod_datout_depth << "}\n";
  total_list << "{demodi " << demodi_depth << "}\n";
  total_list << "{demodq " << demodq_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int demod_datout_depth;
    int demodi_depth;
    int demodq_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void apskdemod_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_apskdemod_hw(volatile void * __xlx_apatb_param_demod_datout, volatile void * __xlx_apatb_param_demodi, volatile void * __xlx_apatb_param_demodq) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_demod_datout);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > demod_datout_pc_buffer(340);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "demod_datout");
  
            // push token into output port buffer
            if (AESL_token != "") {
              demod_datout_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 340; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_demod_datout)[j] = demod_datout_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_demodi);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > demodi_pc_buffer(340);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "demodi");
  
            // push token into output port buffer
            if (AESL_token != "") {
              demodi_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 340; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_demodi)[j] = demodi_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_demodq);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > demodq_pc_buffer(340);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "demodq");
  
            // push token into output port buffer
            if (AESL_token != "") {
              demodq_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 340; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_demodq)[j] = demodq_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//demod_datout
aesl_fh.touch(AUTOTB_TVIN_demod_datout);
aesl_fh.touch(AUTOTB_TVOUT_demod_datout);
//demodi
aesl_fh.touch(AUTOTB_TVIN_demodi);
aesl_fh.touch(AUTOTB_TVOUT_demodi);
//demodq
aesl_fh.touch(AUTOTB_TVIN_demodq);
aesl_fh.touch(AUTOTB_TVOUT_demodq);
CodeState = DUMP_INPUTS;
// print demod_datout Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_demod_datout, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_demod_datout) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_demod_datout)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_demod_datout, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.demod_datout_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_demod_datout, __xlx_sprintf_buffer.data());
}
// print demodi Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_demodi, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_demodi) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_demodi)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_demodi, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.demodi_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_demodi, __xlx_sprintf_buffer.data());
}
// print demodq Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_demodq, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_demodq) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_demodq)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_demodq, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.demodq_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_demodq, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
apskdemod_hw_stub_wrapper(__xlx_apatb_param_demod_datout, __xlx_apatb_param_demodi, __xlx_apatb_param_demodq);
CodeState = DUMP_OUTPUTS;
// print demod_datout Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_demod_datout, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_demod_datout) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_demod_datout)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_demod_datout, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.demod_datout_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_demod_datout, __xlx_sprintf_buffer.data());
}
// print demodi Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_demodi, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_demodi) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_demodi)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_demodi, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.demodi_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_demodi, __xlx_sprintf_buffer.data());
}
// print demodq Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_demodq, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_demodq) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_demodq)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_demodq, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.demodq_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_demodq, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
