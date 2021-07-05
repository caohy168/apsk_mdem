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
#define AUTOTB_TVIN_mod_datin "../tv/cdatafile/c.apskmod.autotvin_mod_datin.dat"
#define AUTOTB_TVOUT_mod_datin "../tv/cdatafile/c.apskmod.autotvout_mod_datin.dat"
// wrapc file define:
#define AUTOTB_TVIN_modi "../tv/cdatafile/c.apskmod.autotvin_modi.dat"
#define AUTOTB_TVOUT_modi "../tv/cdatafile/c.apskmod.autotvout_modi.dat"
// wrapc file define:
#define AUTOTB_TVIN_modq "../tv/cdatafile/c.apskmod.autotvin_modq.dat"
#define AUTOTB_TVOUT_modq "../tv/cdatafile/c.apskmod.autotvout_modq.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_mod_datin "../tv/rtldatafile/rtl.apskmod.autotvout_mod_datin.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_modi "../tv/rtldatafile/rtl.apskmod.autotvout_modi.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_modq "../tv/rtldatafile/rtl.apskmod.autotvout_modq.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  mod_datin_depth = 0;
  modi_depth = 0;
  modq_depth = 0;
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
  total_list << "{mod_datin " << mod_datin_depth << "}\n";
  total_list << "{modi " << modi_depth << "}\n";
  total_list << "{modq " << modq_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int mod_datin_depth;
    int modi_depth;
    int modq_depth;
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
extern "C" void apskmod_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_apskmod_hw(volatile void * __xlx_apatb_param_mod_datin, volatile void * __xlx_apatb_param_modi, volatile void * __xlx_apatb_param_modq) {
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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_mod_datin);
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
          std::vector<sc_bv<32> > mod_datin_pc_buffer(340);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "mod_datin");
  
            // push token into output port buffer
            if (AESL_token != "") {
              mod_datin_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 340; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_mod_datin)[j] = mod_datin_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_modi);
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
          std::vector<sc_bv<32> > modi_pc_buffer(340);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "modi");
  
            // push token into output port buffer
            if (AESL_token != "") {
              modi_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 340; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_modi)[j] = modi_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_modq);
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
          std::vector<sc_bv<32> > modq_pc_buffer(340);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "modq");
  
            // push token into output port buffer
            if (AESL_token != "") {
              modq_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 340; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_modq)[j] = modq_pc_buffer[i].to_int64();
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
//mod_datin
aesl_fh.touch(AUTOTB_TVIN_mod_datin);
aesl_fh.touch(AUTOTB_TVOUT_mod_datin);
//modi
aesl_fh.touch(AUTOTB_TVIN_modi);
aesl_fh.touch(AUTOTB_TVOUT_modi);
//modq
aesl_fh.touch(AUTOTB_TVIN_modq);
aesl_fh.touch(AUTOTB_TVOUT_modq);
CodeState = DUMP_INPUTS;
// print mod_datin Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mod_datin, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_mod_datin) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_mod_datin)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mod_datin, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.mod_datin_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mod_datin, __xlx_sprintf_buffer.data());
}
// print modi Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_modi, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_modi) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_modi)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_modi, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.modi_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_modi, __xlx_sprintf_buffer.data());
}
// print modq Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_modq, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_modq) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_modq)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_modq, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.modq_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_modq, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
apskmod_hw_stub_wrapper(__xlx_apatb_param_mod_datin, __xlx_apatb_param_modi, __xlx_apatb_param_modq);
CodeState = DUMP_OUTPUTS;
// print mod_datin Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_mod_datin, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_mod_datin) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_mod_datin)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mod_datin, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.mod_datin_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_mod_datin, __xlx_sprintf_buffer.data());
}
// print modi Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_modi, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_modi) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_modi)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_modi, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.modi_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_modi, __xlx_sprintf_buffer.data());
}
// print modq Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_modq, __xlx_sprintf_buffer.data());
    if (__xlx_apatb_param_modq) {
    for (int j = 0  - 0, e = 340 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_modq)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_modq, __xlx_sprintf_buffer.data()); 
      }
  }

  tcl_file.set_num(340, &tcl_file.modq_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_modq, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
