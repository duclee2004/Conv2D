set moduleName load_input
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_input}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 32 regular {bram 1024 { 1 1 } 1 1 }  }
	{ buffer_r int 32 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_Addr_A sc_out sc_lv 32 signal 0 } 
	{ input_r_EN_A sc_out sc_logic 1 signal 0 } 
	{ input_r_WEN_A sc_out sc_lv 4 signal 0 } 
	{ input_r_Din_A sc_out sc_lv 32 signal 0 } 
	{ input_r_Dout_A sc_in sc_lv 32 signal 0 } 
	{ input_r_Addr_B sc_out sc_lv 32 signal 0 } 
	{ input_r_EN_B sc_out sc_logic 1 signal 0 } 
	{ input_r_WEN_B sc_out sc_lv 4 signal 0 } 
	{ input_r_Din_B sc_out sc_lv 32 signal 0 } 
	{ input_r_Dout_B sc_in sc_lv 32 signal 0 } 
	{ buffer_r_address0 sc_out sc_lv 10 signal 1 } 
	{ buffer_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_r_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_r_d0 sc_out sc_lv 32 signal 1 } 
	{ buffer_r_address1 sc_out sc_lv 10 signal 1 } 
	{ buffer_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_r_we1 sc_out sc_logic 1 signal 1 } 
	{ buffer_r_d1 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Addr_A" }} , 
 	{ "name": "input_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "EN_A" }} , 
 	{ "name": "input_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_r", "role": "WEN_A" }} , 
 	{ "name": "input_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Din_A" }} , 
 	{ "name": "input_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Dout_A" }} , 
 	{ "name": "input_r_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Addr_B" }} , 
 	{ "name": "input_r_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "EN_B" }} , 
 	{ "name": "input_r_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_r", "role": "WEN_B" }} , 
 	{ "name": "input_r_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Din_B" }} , 
 	{ "name": "input_r_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Dout_B" }} , 
 	{ "name": "buffer_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer_r", "role": "address0" }} , 
 	{ "name": "buffer_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce0" }} , 
 	{ "name": "buffer_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "we0" }} , 
 	{ "name": "buffer_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_r", "role": "d0" }} , 
 	{ "name": "buffer_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer_r", "role": "address1" }} , 
 	{ "name": "buffer_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce1" }} , 
 	{ "name": "buffer_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "we1" }} , 
 	{ "name": "buffer_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_r", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "load_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	load_input {
		input_r {Type I LastRead 17 FirstWrite -1}
		buffer_r {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "514", "Max" : "514"}
	, {"Name" : "Interval", "Min" : "514", "Max" : "514"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_r { bram {  { input_r_Addr_A MemPortADDR2 1 32 }  { input_r_EN_A MemPortCE2 1 1 }  { input_r_WEN_A MemPortWE2 1 4 }  { input_r_Din_A MemPortDIN2 1 32 }  { input_r_Dout_A MemPortDOUT2 0 32 }  { input_r_Addr_B MemPortADDR2 1 32 }  { input_r_EN_B MemPortCE2 1 1 }  { input_r_WEN_B MemPortWE2 1 4 }  { input_r_Din_B MemPortDIN2 1 32 }  { input_r_Dout_B MemPortDOUT2 0 32 } } }
	buffer_r { ap_memory {  { buffer_r_address0 mem_address 1 10 }  { buffer_r_ce0 mem_ce 1 1 }  { buffer_r_we0 mem_we 1 1 }  { buffer_r_d0 mem_din 1 32 }  { buffer_r_address1 MemPortADDR2 1 10 }  { buffer_r_ce1 MemPortCE2 1 1 }  { buffer_r_we1 MemPortWE2 1 1 }  { buffer_r_d1 MemPortDIN2 1 32 } } }
}
