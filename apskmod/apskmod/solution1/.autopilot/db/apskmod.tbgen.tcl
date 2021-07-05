set moduleName apskmod
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
set C_modelName {apskmod}
set C_modelType { void 0 }
set C_modelArgList {
	{ mod_datin int 32 regular {axi_s 0 volatile  { mod_datin Data } }  }
	{ modi int 32 regular {axi_s 1 volatile  { modi Data } }  }
	{ modq int 32 regular {axi_s 1 volatile  { modq Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mod_datin", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "mod_datin","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "modi", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "modi","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "modq", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "modq","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mod_datin_TDATA sc_in sc_lv 32 signal 0 } 
	{ mod_datin_TVALID sc_in sc_logic 1 invld 0 } 
	{ mod_datin_TREADY sc_out sc_logic 1 inacc 0 } 
	{ modi_TDATA sc_out sc_lv 32 signal 1 } 
	{ modi_TVALID sc_out sc_logic 1 outvld 1 } 
	{ modi_TREADY sc_in sc_logic 1 outacc 1 } 
	{ modq_TDATA sc_out sc_lv 32 signal 2 } 
	{ modq_TVALID sc_out sc_logic 1 outvld 2 } 
	{ modq_TREADY sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mod_datin_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mod_datin", "role": "TDATA" }} , 
 	{ "name": "mod_datin_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "mod_datin", "role": "TVALID" }} , 
 	{ "name": "mod_datin_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "mod_datin", "role": "TREADY" }} , 
 	{ "name": "modi_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "modi", "role": "TDATA" }} , 
 	{ "name": "modi_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "modi", "role": "TVALID" }} , 
 	{ "name": "modi_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "modi", "role": "TREADY" }} , 
 	{ "name": "modq_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "modq", "role": "TDATA" }} , 
 	{ "name": "modq_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "modq", "role": "TVALID" }} , 
 	{ "name": "modq_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "modq", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "apskmod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mod_datin", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mod_datin_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "modi", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "modi_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "modq", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "modq_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mod_tempin_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mod_tempouti_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mod_tempoutq_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mod_datin_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_modi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_modq_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	apskmod {
		mod_datin {Type I LastRead 1 FirstWrite -1}
		modi {Type O LastRead -1 FirstWrite 6}
		modq {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1028", "Max" : "1028"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	mod_datin { axis {  { mod_datin_TDATA in_data 0 32 }  { mod_datin_TVALID in_vld 0 1 }  { mod_datin_TREADY in_acc 1 1 } } }
	modi { axis {  { modi_TDATA out_data 1 32 }  { modi_TVALID out_vld 1 1 }  { modi_TREADY out_acc 0 1 } } }
	modq { axis {  { modq_TDATA out_data 1 32 }  { modq_TVALID out_vld 1 1 }  { modq_TREADY out_acc 0 1 } } }
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
