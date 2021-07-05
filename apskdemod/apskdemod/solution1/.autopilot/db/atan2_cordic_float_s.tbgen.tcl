set moduleName atan2_cordic_float_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {atan2_cordic<float>}
set C_modelType { float 32 }
set C_modelArgList {
	{ y_in float 32 regular  }
	{ x_in float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 6
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ y_in sc_in sc_lv 32 signal 0 } 
	{ x_in sc_in sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "y_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_in", "role": "default" }} , 
 	{ "name": "x_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "126", "127", "128"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_8_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_348", "Parent" : "1",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_1_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_355", "Parent" : "1",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_4_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_363", "Parent" : "1",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_7_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_371", "Parent" : "1",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_12_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_378", "Parent" : "1",
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_15_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_386", "Parent" : "1",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_18_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_394", "Parent" : "1",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_21_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_402", "Parent" : "1",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_24_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_410", "Parent" : "1",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_27_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_417", "Parent" : "1",
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_30_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_425", "Parent" : "1",
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_33_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_433", "Parent" : "1",
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_36_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_441", "Parent" : "1",
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_39_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_449", "Parent" : "1",
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_42_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_456", "Parent" : "1",
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_45_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_464", "Parent" : "1",
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_48_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_472", "Parent" : "1",
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_51_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_480", "Parent" : "1",
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_54_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_488", "Parent" : "1",
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_57_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_495", "Parent" : "1",
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_60_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_503", "Parent" : "1",
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_63_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_511", "Parent" : "1",
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_66_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_519", "Parent" : "1",
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_69_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_527", "Parent" : "1",
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
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_72_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_534", "Parent" : "1",
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_75_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_542", "Parent" : "1",
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_78_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_550", "Parent" : "1",
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
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_81_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_558", "Parent" : "1",
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
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_84_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_566", "Parent" : "1",
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
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_87_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_573", "Parent" : "1",
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_90_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_581", "Parent" : "1",
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
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_93_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_589", "Parent" : "1",
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_96_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_597", "Parent" : "1",
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_99_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_605", "Parent" : "1",
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_102_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_612", "Parent" : "1",
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
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_105_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_620", "Parent" : "1",
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
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_108_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_628", "Parent" : "1",
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_111_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_636", "Parent" : "1",
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
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_114_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_644", "Parent" : "1",
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
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_117_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_651", "Parent" : "1",
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
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_119_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_bool_s_fu_659", "Parent" : "1",
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
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_667", "Parent" : "1",
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
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_s_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_674", "Parent" : "1",
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
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_3_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_682", "Parent" : "1",
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
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_6_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_690", "Parent" : "1",
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
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_11_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_697", "Parent" : "1",
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
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_14_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_705", "Parent" : "1",
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
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_17_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_713", "Parent" : "1",
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
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_20_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_721", "Parent" : "1",
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
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_23_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_729", "Parent" : "1",
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
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_26_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_736", "Parent" : "1",
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
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_29_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_744", "Parent" : "1",
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
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_32_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_752", "Parent" : "1",
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_35_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_760", "Parent" : "1",
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
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_38_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_768", "Parent" : "1",
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
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_41_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_775", "Parent" : "1",
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
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_44_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_783", "Parent" : "1",
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
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_47_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_791", "Parent" : "1",
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
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_50_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_799", "Parent" : "1",
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
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_53_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_807", "Parent" : "1",
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
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_56_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_814", "Parent" : "1",
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
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_59_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_822", "Parent" : "1",
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
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_62_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_830", "Parent" : "1",
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
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_65_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_838", "Parent" : "1",
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
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_68_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_846", "Parent" : "1",
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
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_71_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_853", "Parent" : "1",
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
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_74_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_861", "Parent" : "1",
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
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_77_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_869", "Parent" : "1",
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
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_80_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_877", "Parent" : "1",
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
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_83_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_885", "Parent" : "1",
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
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_86_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_892", "Parent" : "1",
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
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_89_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_900", "Parent" : "1",
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
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_92_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_908", "Parent" : "1",
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
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_95_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_916", "Parent" : "1",
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
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_98_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_924", "Parent" : "1",
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
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_101_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_931", "Parent" : "1",
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
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_104_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_939", "Parent" : "1",
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
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_107_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_947", "Parent" : "1",
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
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_110_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_955", "Parent" : "1",
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
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_113_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_963", "Parent" : "1",
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
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_116_addsub_0_0_ap_fixed_43_4_5_3_0_ap_fixed_43_4_5_3_0_ap_uint_1_s_fu_970", "Parent" : "1",
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
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_9_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_978", "Parent" : "1",
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
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_2_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_987", "Parent" : "1",
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
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_5_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_996", "Parent" : "1",
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
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_10_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1005", "Parent" : "1",
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
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_13_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1014", "Parent" : "1",
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
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_16_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1023", "Parent" : "1",
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
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_19_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1032", "Parent" : "1",
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
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_22_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1040", "Parent" : "1",
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
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_25_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1049", "Parent" : "1",
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
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_28_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1058", "Parent" : "1",
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
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_31_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1067", "Parent" : "1",
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
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_34_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1076", "Parent" : "1",
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
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_37_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1085", "Parent" : "1",
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
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_40_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1093", "Parent" : "1",
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
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_43_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1102", "Parent" : "1",
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
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_46_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1111", "Parent" : "1",
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
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_49_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1120", "Parent" : "1",
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
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_52_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1129", "Parent" : "1",
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
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_55_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1138", "Parent" : "1",
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
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_58_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1146", "Parent" : "1",
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
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_61_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1155", "Parent" : "1",
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
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_64_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1164", "Parent" : "1",
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
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_67_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1173", "Parent" : "1",
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
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_70_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1182", "Parent" : "1",
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
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_73_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1190", "Parent" : "1",
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
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_76_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1199", "Parent" : "1",
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
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_79_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1208", "Parent" : "1",
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
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_82_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1217", "Parent" : "1",
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
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_85_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1226", "Parent" : "1",
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
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_88_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1234", "Parent" : "1",
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
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_91_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1243", "Parent" : "1",
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
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_94_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1252", "Parent" : "1",
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
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_97_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1261", "Parent" : "1",
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
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_100_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1270", "Parent" : "1",
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
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_103_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1278", "Parent" : "1",
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
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_106_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1287", "Parent" : "1",
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
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_109_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1296", "Parent" : "1",
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
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_112_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1305", "Parent" : "1",
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
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_115_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1314", "Parent" : "1",
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
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_118_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1322", "Parent" : "1",
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
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_120_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1331", "Parent" : "1",
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
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.trunc_ln657_121_addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s_fu_1340", "Parent" : "1",
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
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_generic_float_s_fu_169.fdiv_32ns_32ns_32_6_no_dsp_1_U53", "Parent" : "1"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_3_full_dsp_0_U57", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_3_full_dsp_0_U58", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_1_no_dsp_0_U59", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		add {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y_in { ap_none {  { y_in in_data 0 32 } } }
	x_in { ap_none {  { x_in in_data 0 32 } } }
}
