set moduleName apskdemod
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {apskdemod}
set C_modelType { void 0 }
set C_modelArgList {
	{ demod_datout int 32 regular {axi_s 1 volatile  { demod_datout Data } }  }
	{ demodi int 32 regular {axi_s 0 volatile  { demodi Data } }  }
	{ demodq int 32 regular {axi_s 0 volatile  { demodq Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "demod_datout", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "demod_datout","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "demodi", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "demodi","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "demodq", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "demodq","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ demod_datout_TDATA sc_out sc_lv 32 signal 0 } 
	{ demod_datout_TVALID sc_out sc_logic 1 outvld 0 } 
	{ demod_datout_TREADY sc_in sc_logic 1 outacc 0 } 
	{ demodi_TDATA sc_in sc_lv 32 signal 1 } 
	{ demodi_TVALID sc_in sc_logic 1 invld 1 } 
	{ demodi_TREADY sc_out sc_logic 1 inacc 1 } 
	{ demodq_TDATA sc_in sc_lv 32 signal 2 } 
	{ demodq_TVALID sc_in sc_logic 1 invld 2 } 
	{ demodq_TREADY sc_out sc_logic 1 inacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "demod_datout_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "demod_datout", "role": "TDATA" }} , 
 	{ "name": "demod_datout_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "demod_datout", "role": "TVALID" }} , 
 	{ "name": "demod_datout_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "demod_datout", "role": "TREADY" }} , 
 	{ "name": "demodi_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "demodi", "role": "TDATA" }} , 
 	{ "name": "demodi_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "demodi", "role": "TVALID" }} , 
 	{ "name": "demodi_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "demodi", "role": "TREADY" }} , 
 	{ "name": "demodq_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "demodq", "role": "TDATA" }} , 
 	{ "name": "demodq_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "demodq", "role": "TVALID" }} , 
 	{ "name": "demodq_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "demodq", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "133", "262", "290", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391"],
		"CDFG" : "apskdemod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1804", "EstimateLatencyMax" : "1804",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "demod_datout", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "demod_datout_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "demodi", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "demodi_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "demodq", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "demodq_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "262", "SubInstance" : "grp_pow_generic_double_s_fu_754", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "290", "SubInstance" : "grp_pow_generic_double_s_fu_783", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.demod_tempout_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.demod_tempouti_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.demod_tempoutq_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742", "Parent" : "0", "Child" : ["5", "130", "131", "132"],
		"CDFG" : "atan2_cordic_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169", "Parent" : "4", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129"],
		"CDFG" : "atan2_generic_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_8_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_348", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_1_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_355", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_4_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_363", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_7_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_371", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_12_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_378", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_15_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_386", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_18_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_394", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_21_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_402", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_24_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_410", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_27_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_417", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_30_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_425", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_33_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_433", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_36_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_441", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_39_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_449", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_42_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_456", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_45_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_464", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_48_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_472", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_51_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_480", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_54_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_488", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_57_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_495", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_60_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_503", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_63_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_511", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_66_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_519", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_69_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_527", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_72_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_534", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_75_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_542", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_78_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_550", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_81_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_558", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_84_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_566", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_87_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_573", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_90_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_581", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_93_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_589", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_96_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_597", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_99_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_605", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_102_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_612", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_105_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_620", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_108_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_628", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_111_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_636", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_114_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_644", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_117_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_651", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_119_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_659", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_667", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_s_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_674", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_3_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_682", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_6_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_690", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_11_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_697", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_14_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_705", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_17_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_713", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_20_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_721", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_23_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_729", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_26_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_736", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_29_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_744", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_32_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_752", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_35_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_760", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_38_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_768", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_41_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_775", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_44_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_783", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_47_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_791", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_50_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_799", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_53_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_807", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_56_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_814", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_59_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_822", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_62_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_830", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_65_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_838", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_68_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_846", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_71_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_853", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_74_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_861", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_77_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_869", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_80_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_877", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_83_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_885", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_86_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_892", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_89_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_900", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_92_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_908", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_95_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_916", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_98_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_924", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_101_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_931", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_104_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_939", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_107_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_947", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_110_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_955", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_113_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_963", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_116_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_970", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_9_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_978", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_2_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_987", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_5_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_996", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_10_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1005", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_13_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1014", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_16_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1023", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_19_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1032", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_22_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1040", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_25_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1049", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_28_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1058", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_31_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1067", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_34_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1076", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_37_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1085", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_40_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1093", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_43_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1102", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_46_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1111", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_49_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1120", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_52_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1129", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_55_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1138", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_58_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1146", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_61_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1155", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_64_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1164", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_67_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1173", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_70_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1182", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_73_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1190", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_76_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1199", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_79_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1208", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_82_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1217", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_85_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1226", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_88_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1234", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_91_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1243", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_94_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1252", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_97_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1261", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_100_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1270", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_103_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1278", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_106_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1287", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_109_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1296", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_112_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1305", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_115_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1314", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_118_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1322", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_120_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1331", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.trunc_ln657_121_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1340", "Parent" : "5",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.grp_atan2_generic_float_s_fu_169.fdiv_32ns_32ns_32_6_no_dsp_1_U53", "Parent" : "5"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.fsub_32ns_32ns_32_3_full_dsp_0_U57", "Parent" : "4"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.fsub_32ns_32ns_32_3_full_dsp_0_U58", "Parent" : "4"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_742.fcmp_32ns_32ns_1_1_no_dsp_0_U59", "Parent" : "4"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748", "Parent" : "0", "Child" : ["134", "259", "260", "261"],
		"CDFG" : "atan2_cordic_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169", "Parent" : "133", "Child" : ["135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258"],
		"CDFG" : "atan2_generic_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_8_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_348", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_1_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_355", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_4_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_363", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_7_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_371", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_12_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_378", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_15_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_386", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_18_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_394", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_21_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_402", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_24_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_410", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_27_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_417", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_30_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_425", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_33_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_433", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_36_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_441", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_39_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_449", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_42_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_456", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_45_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_464", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_48_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_472", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_51_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_480", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_54_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_488", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_57_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_495", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_60_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_503", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_63_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_511", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_66_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_519", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_69_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_527", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_72_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_534", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_75_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_542", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_78_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_550", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_81_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_558", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_84_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_566", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_87_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_573", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_90_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_581", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_93_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_589", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_96_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_597", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_99_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_605", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_102_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_612", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_105_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_620", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_108_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_628", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_111_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_636", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_114_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_644", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_117_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_651", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_119_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_659", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_667", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_s_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_674", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_3_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_682", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_6_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_690", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_11_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_697", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_14_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_705", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_17_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_713", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_20_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_721", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_23_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_729", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_26_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_736", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_29_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_744", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_32_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_752", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_35_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_760", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_38_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_768", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_41_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_775", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_44_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_783", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_47_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_791", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_50_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_799", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_53_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_807", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_56_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_814", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_59_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_822", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_62_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_830", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_65_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_838", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_68_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_846", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_71_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_853", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_74_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_861", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_77_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_869", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_80_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_877", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_83_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_885", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_86_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_892", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_89_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_900", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_92_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_908", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_95_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_916", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_98_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_924", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_101_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_931", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_104_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_939", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_107_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_947", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_110_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_955", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_113_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_963", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_116_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_970", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_9_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_978", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_2_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_987", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_5_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_996", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_10_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1005", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_13_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1014", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_16_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1023", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_19_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1032", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_22_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1040", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_25_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1049", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_28_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1058", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_31_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1067", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_34_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1076", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_37_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1085", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_40_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1093", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_43_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1102", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_46_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1111", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_49_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1120", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_52_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1129", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_55_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1138", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_58_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1146", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_61_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1155", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_64_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1164", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_67_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1173", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_70_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1182", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_73_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1190", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_76_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1199", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_79_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1208", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_82_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1217", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_85_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1226", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_88_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1234", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_91_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1243", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_94_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1252", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_97_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1261", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_100_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1270", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_103_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1278", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_106_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1287", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_109_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1296", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_112_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1305", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_115_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1314", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_118_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1322", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_120_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1331", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.trunc_ln657_121_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1340", "Parent" : "134",
		"CDFG" : "addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.grp_atan2_generic_float_s_fu_169.fdiv_32ns_32ns_32_6_no_dsp_1_U53", "Parent" : "134"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.fsub_32ns_32ns_32_3_full_dsp_0_U57", "Parent" : "133"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.fsub_32ns_32ns_32_3_full_dsp_0_U58", "Parent" : "133"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_float_s_fu_748.fcmp_32ns_32ns_1_1_no_dsp_0_U59", "Parent" : "133"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754", "Parent" : "0", "Child" : ["263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V_U", "Parent" : "262"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V_U", "Parent" : "262"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V_U", "Parent" : "262"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V_U", "Parent" : "262"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V_U", "Parent" : "262"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V_U", "Parent" : "262"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V_U", "Parent" : "262"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "262"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "262"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "262"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_54s_6ns_54_1_1_U1", "Parent" : "262"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_71ns_4ns_75_1_1_U2", "Parent" : "262"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_73ns_6ns_79_1_1_U3", "Parent" : "262"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_83ns_6ns_89_1_1_U4", "Parent" : "262"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_92ns_6ns_98_1_1_U5", "Parent" : "262"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_87ns_6ns_93_1_1_U6", "Parent" : "262"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_82ns_6ns_88_1_1_U7", "Parent" : "262"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_77ns_6ns_83_1_1_U8", "Parent" : "262"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_12s_80ns_90_1_1_U9", "Parent" : "262"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_40ns_40ns_80_1_1_U10", "Parent" : "262"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_13s_71s_71_1_1_U11", "Parent" : "262"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_43ns_36ns_79_1_1_U12", "Parent" : "262"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_49ns_44ns_93_1_1_U13", "Parent" : "262"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mul_50ns_50ns_100_1_1_U14", "Parent" : "262"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_754.mac_muladd_16s_16ns_19s_31_4_1_U15", "Parent" : "262"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783", "Parent" : "0", "Child" : ["291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V_U", "Parent" : "290"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V_U", "Parent" : "290"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V_U", "Parent" : "290"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V_U", "Parent" : "290"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V_U", "Parent" : "290"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V_U", "Parent" : "290"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V_U", "Parent" : "290"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "290"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "290"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "290"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_54s_6ns_54_1_1_U1", "Parent" : "290"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_71ns_4ns_75_1_1_U2", "Parent" : "290"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_73ns_6ns_79_1_1_U3", "Parent" : "290"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_83ns_6ns_89_1_1_U4", "Parent" : "290"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_92ns_6ns_98_1_1_U5", "Parent" : "290"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_87ns_6ns_93_1_1_U6", "Parent" : "290"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_82ns_6ns_88_1_1_U7", "Parent" : "290"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_77ns_6ns_83_1_1_U8", "Parent" : "290"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_12s_80ns_90_1_1_U9", "Parent" : "290"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_40ns_40ns_80_1_1_U10", "Parent" : "290"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_13s_71s_71_1_1_U11", "Parent" : "290"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_43ns_36ns_79_1_1_U12", "Parent" : "290"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_49ns_44ns_93_1_1_U13", "Parent" : "290"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mul_50ns_50ns_100_1_1_U14", "Parent" : "290"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_783.mac_muladd_16s_16ns_19s_31_4_1_U15", "Parent" : "290"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U64", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U65", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U66", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U67", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U68", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U69", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U70", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U71", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U72", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U73", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U74", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U75", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U76", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U77", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U78", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U79", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U80", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U81", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U82", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U83", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U84", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U85", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U86", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U89", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U90", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U91", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U92", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U93", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U94", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U95", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U96", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U97", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U98", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U99", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U100", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U101", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U102", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U103", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U104", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U105", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U106", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U107", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U108", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U109", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U110", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U111", "Parent" : "0"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U112", "Parent" : "0"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U113", "Parent" : "0"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U114", "Parent" : "0"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U115", "Parent" : "0"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U116", "Parent" : "0"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U117", "Parent" : "0"},
	{"ID" : "372", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U118", "Parent" : "0"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U119", "Parent" : "0"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "0"},
	{"ID" : "375", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U121", "Parent" : "0"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U122", "Parent" : "0"},
	{"ID" : "377", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U123", "Parent" : "0"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U124", "Parent" : "0"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U125", "Parent" : "0"},
	{"ID" : "380", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U126", "Parent" : "0"},
	{"ID" : "381", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U127", "Parent" : "0"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U128", "Parent" : "0"},
	{"ID" : "383", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_6_no_dsp_1_U129", "Parent" : "0"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_3_full_dsp_1_U130", "Parent" : "0"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_11_no_dsp_1_U131", "Parent" : "0"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_11_no_dsp_1_U132", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U133", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U134", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_demod_datout_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_demodi_U", "Parent" : "0"},
	{"ID" : "391", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_demodq_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	apskdemod {
		demod_datout {Type O LastRead -1 FirstWrite 10}
		demodi {Type I LastRead 3 FirstWrite -1}
		demodq {Type I LastRead 5 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	atan2_cordic_float_s {
		y_in {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 0 FirstWrite -1}}
	atan2_generic_float_s {
		y_in {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	atan2_cordic_float_s {
		y_in {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 0 FirstWrite -1}}
	atan2_generic_float_s {
		y_in {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1804", "Max" : "1804"}
	, {"Name" : "Interval", "Min" : "1805", "Max" : "1805"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
]}

set Spec2ImplPortList { 
	demod_datout { axis {  { demod_datout_TDATA out_data 1 32 }  { demod_datout_TVALID out_vld 1 1 }  { demod_datout_TREADY out_acc 0 1 } } }
	demodi { axis {  { demodi_TDATA in_data 0 32 }  { demodi_TVALID in_vld 0 1 }  { demodi_TREADY in_acc 1 1 } } }
	demodq { axis {  { demodq_TDATA in_data 0 32 }  { demodq_TVALID in_vld 0 1 }  { demodq_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
