set moduleName convolve_2d
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
set C_modelName {convolve_2d}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_stream_V int 32 regular {fifo 1 volatile }  }
	{ in_stream_V int 32 regular {fifo 0 volatile }  }
	{ kernel int 32 regular {array 9 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_V_din sc_out sc_lv 32 signal 0 } 
	{ out_stream_V_full_n sc_in sc_logic 1 signal 0 } 
	{ out_stream_V_write sc_out sc_logic 1 signal 0 } 
	{ in_stream_V_dout sc_in sc_lv 32 signal 1 } 
	{ in_stream_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_stream_V_read sc_out sc_logic 1 signal 1 } 
	{ kernel_address0 sc_out sc_lv 4 signal 2 } 
	{ kernel_ce0 sc_out sc_logic 1 signal 2 } 
	{ kernel_q0 sc_in sc_lv 32 signal 2 } 
	{ kernel_address1 sc_out sc_lv 4 signal 2 } 
	{ kernel_ce1 sc_out sc_logic 1 signal 2 } 
	{ kernel_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V", "role": "din" }} , 
 	{ "name": "out_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V", "role": "full_n" }} , 
 	{ "name": "out_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V", "role": "write" }} , 
 	{ "name": "in_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V", "role": "dout" }} , 
 	{ "name": "in_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V", "role": "read" }} , 
 	{ "name": "kernel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "address0" }} , 
 	{ "name": "kernel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ce0" }} , 
 	{ "name": "kernel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "q0" }} , 
 	{ "name": "kernel_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "address1" }} , 
 	{ "name": "kernel_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ce1" }} , 
 	{ "name": "kernel_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convolve_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "269", "EstimateLatencyMax" : "269",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolve_2d {
		out_stream_V {Type O LastRead -1 FirstWrite 10}
		in_stream_V {Type I LastRead 3 FirstWrite -1}
		kernel {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "269", "Max" : "269"}
	, {"Name" : "Interval", "Min" : "270", "Max" : "270"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_stream_V { ap_fifo {  { out_stream_V_din fifo_data 1 32 }  { out_stream_V_full_n fifo_status 0 1 }  { out_stream_V_write fifo_update 1 1 } } }
	in_stream_V { ap_fifo {  { in_stream_V_dout fifo_data 0 32 }  { in_stream_V_empty_n fifo_status 0 1 }  { in_stream_V_read fifo_update 1 1 } } }
	kernel { ap_memory {  { kernel_address0 mem_address 1 4 }  { kernel_ce0 mem_ce 1 1 }  { kernel_q0 mem_dout 0 32 }  { kernel_address1 MemPortADDR2 1 4 }  { kernel_ce1 MemPortCE2 1 1 }  { kernel_q1 MemPortDOUT2 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	out_stream_V { fifo_write 49 has_conditional }
	in_stream_V { fifo_read 49 no_conditional }
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
