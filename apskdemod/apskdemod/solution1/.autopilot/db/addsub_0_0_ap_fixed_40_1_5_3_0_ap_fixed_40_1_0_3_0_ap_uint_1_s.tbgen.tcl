set moduleName addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {addsub<0, 0, ap_fixed<40, 1, 5, 3, 0>, ap_fixed<40, 1, 0, 3, 0>, ap_uint<1> >}
set C_modelType { int 40 }
set C_modelArgList {
	{ a int 40 regular  }
	{ b int 39 regular  }
	{ add int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 39, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 40} ]}
# RTL Port declarations: 
set portNum 5
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a sc_in sc_lv 40 signal 0 } 
	{ b sc_in sc_lv 39 signal 1 } 
	{ add sc_in sc_lv 1 signal 2 } 
	{ ap_return sc_out sc_lv 40 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":39, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "add", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	addsub_0_0_ap_fixed_40_1_5_3_0_ap_fixed_40_1_0_3_0_ap_uint_1_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_none {  { a in_data 0 40 } } }
	b { ap_none {  { b in_data 0 39 } } }
	add { ap_none {  { add in_data 0 1 } } }
}
