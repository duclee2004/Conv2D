set moduleName conv2d
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv2d}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 32 regular {bram 1024 { 1 1 } 1 1 }  }
	{ kernel int 32 regular {bram 9 { 1 1 } 1 1 }  }
	{ result int 32 regular {bram 900 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "result", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 29,"step" : 1},{"low" : 0,"up" : 29,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_r_Addr_A sc_out sc_lv 32 signal 0 } 
	{ input_r_EN_A sc_out sc_logic 1 signal 0 } 
	{ input_r_Din_A sc_out sc_lv 32 signal 0 } 
	{ input_r_Dout_A sc_in sc_lv 32 signal 0 } 
	{ input_r_WEN_A sc_out sc_lv 4 signal 0 } 
	{ input_r_Clk_A sc_out sc_logic 1 signal 0 } 
	{ input_r_Rst_A sc_out sc_logic 1 signal 0 } 
	{ input_r_Addr_B sc_out sc_lv 32 signal 0 } 
	{ input_r_EN_B sc_out sc_logic 1 signal 0 } 
	{ input_r_Din_B sc_out sc_lv 32 signal 0 } 
	{ input_r_Dout_B sc_in sc_lv 32 signal 0 } 
	{ input_r_WEN_B sc_out sc_lv 4 signal 0 } 
	{ input_r_Clk_B sc_out sc_logic 1 signal 0 } 
	{ input_r_Rst_B sc_out sc_logic 1 signal 0 } 
	{ kernel_Addr_A sc_out sc_lv 32 signal 1 } 
	{ kernel_EN_A sc_out sc_logic 1 signal 1 } 
	{ kernel_Din_A sc_out sc_lv 32 signal 1 } 
	{ kernel_Dout_A sc_in sc_lv 32 signal 1 } 
	{ kernel_WEN_A sc_out sc_lv 4 signal 1 } 
	{ kernel_Clk_A sc_out sc_logic 1 signal 1 } 
	{ kernel_Rst_A sc_out sc_logic 1 signal 1 } 
	{ kernel_Addr_B sc_out sc_lv 32 signal 1 } 
	{ kernel_EN_B sc_out sc_logic 1 signal 1 } 
	{ kernel_Din_B sc_out sc_lv 32 signal 1 } 
	{ kernel_Dout_B sc_in sc_lv 32 signal 1 } 
	{ kernel_WEN_B sc_out sc_lv 4 signal 1 } 
	{ kernel_Clk_B sc_out sc_logic 1 signal 1 } 
	{ kernel_Rst_B sc_out sc_logic 1 signal 1 } 
	{ result_Addr_A sc_out sc_lv 32 signal 2 } 
	{ result_EN_A sc_out sc_logic 1 signal 2 } 
	{ result_Din_A sc_out sc_lv 32 signal 2 } 
	{ result_Dout_A sc_in sc_lv 32 signal 2 } 
	{ result_WEN_A sc_out sc_lv 4 signal 2 } 
	{ result_Clk_A sc_out sc_logic 1 signal 2 } 
	{ result_Rst_A sc_out sc_logic 1 signal 2 } 
	{ result_Addr_B sc_out sc_lv 32 signal 2 } 
	{ result_EN_B sc_out sc_logic 1 signal 2 } 
	{ result_Din_B sc_out sc_lv 32 signal 2 } 
	{ result_Dout_B sc_in sc_lv 32 signal 2 } 
	{ result_WEN_B sc_out sc_lv 4 signal 2 } 
	{ result_Clk_B sc_out sc_logic 1 signal 2 } 
	{ result_Rst_B sc_out sc_logic 1 signal 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Addr_A" }} , 
 	{ "name": "input_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "EN_A" }} , 
 	{ "name": "input_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Din_A" }} , 
 	{ "name": "input_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Dout_A" }} , 
 	{ "name": "input_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_r", "role": "WEN_A" }} , 
 	{ "name": "input_r_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "Clk_A" }} , 
 	{ "name": "input_r_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "Rst_A" }} , 
 	{ "name": "input_r_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Addr_B" }} , 
 	{ "name": "input_r_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "EN_B" }} , 
 	{ "name": "input_r_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Din_B" }} , 
 	{ "name": "input_r_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "Dout_B" }} , 
 	{ "name": "input_r_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_r", "role": "WEN_B" }} , 
 	{ "name": "input_r_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "Clk_B" }} , 
 	{ "name": "input_r_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "Rst_B" }} , 
 	{ "name": "kernel_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "Addr_A" }} , 
 	{ "name": "kernel_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "EN_A" }} , 
 	{ "name": "kernel_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "Din_A" }} , 
 	{ "name": "kernel_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "Dout_A" }} , 
 	{ "name": "kernel_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "WEN_A" }} , 
 	{ "name": "kernel_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "Clk_A" }} , 
 	{ "name": "kernel_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "Rst_A" }} , 
 	{ "name": "kernel_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "Addr_B" }} , 
 	{ "name": "kernel_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "EN_B" }} , 
 	{ "name": "kernel_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "Din_B" }} , 
 	{ "name": "kernel_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "Dout_B" }} , 
 	{ "name": "kernel_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "WEN_B" }} , 
 	{ "name": "kernel_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "Clk_B" }} , 
 	{ "name": "kernel_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "Rst_B" }} , 
 	{ "name": "result_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "Addr_A" }} , 
 	{ "name": "result_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "EN_A" }} , 
 	{ "name": "result_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "Din_A" }} , 
 	{ "name": "result_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "Dout_A" }} , 
 	{ "name": "result_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "WEN_A" }} , 
 	{ "name": "result_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "Clk_A" }} , 
 	{ "name": "result_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "Rst_A" }} , 
 	{ "name": "result_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "Addr_B" }} , 
 	{ "name": "result_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "EN_B" }} , 
 	{ "name": "result_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "Din_B" }} , 
 	{ "name": "result_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "Dout_B" }} , 
 	{ "name": "result_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result", "role": "WEN_B" }} , 
 	{ "name": "result_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "Clk_B" }} , 
 	{ "name": "result_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "Rst_B" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "conv2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5471", "EstimateLatencyMax" : "5471",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "load_input_U0", "ReadyCount" : "load_input_U0_ap_ready_count"},
			{"ID" : "4", "Name" : "convolution_kernel_U0", "ReadyCount" : "convolution_kernel_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "write_output_U0"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input_U0", "Port" : "input_r"}]},
			{"Name" : "kernel", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "convolution_kernel_U0", "Port" : "kernel"}]},
			{"Name" : "result", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_output_U0", "Port" : "result"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_input_U0", "Parent" : "0",
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
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "1"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolution_kernel_U0", "Parent" : "0",
		"CDFG" : "convolution_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4505", "EstimateLatencyMax" : "4505",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "1"},
			{"Name" : "kernel", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "2"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_output_U0", "Parent" : "0",
		"CDFG" : "write_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "450", "EstimateLatencyMax" : "450",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "2"},
			{"Name" : "result", "Type" : "Bram", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	conv2d {
		input_r {Type I LastRead 17 FirstWrite -1}
		kernel {Type I LastRead 6 FirstWrite -1}
		result {Type O LastRead -1 FirstWrite 1}}
	load_input {
		input_r {Type I LastRead 17 FirstWrite -1}
		buffer_r {Type O LastRead -1 FirstWrite 2}}
	convolution_kernel {
		buffer_r {Type I LastRead 6 FirstWrite -1}
		kernel {Type I LastRead 6 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 9}}
	write_output {
		output_r {Type I LastRead 450 FirstWrite -1}
		result {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5471", "Max" : "5471"}
	, {"Name" : "Interval", "Min" : "4506", "Max" : "4506"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { bram {  { input_r_Addr_A MemPortADDR2 1 32 }  { input_r_EN_A MemPortCE2 1 1 }  { input_r_Din_A MemPortDIN2 1 32 }  { input_r_Dout_A MemPortDOUT2 0 32 }  { input_r_WEN_A MemPortWE2 1 4 }  { input_r_Clk_A mem_clk 1 1 }  { input_r_Rst_A mem_rst 1 1 }  { input_r_Addr_B MemPortADDR2 1 32 }  { input_r_EN_B MemPortCE2 1 1 }  { input_r_Din_B MemPortDIN2 1 32 }  { input_r_Dout_B MemPortDOUT2 0 32 }  { input_r_WEN_B MemPortWE2 1 4 }  { input_r_Clk_B mem_clk 1 1 }  { input_r_Rst_B mem_rst 1 1 } } }
	kernel { bram {  { kernel_Addr_A MemPortADDR2 1 32 }  { kernel_EN_A MemPortCE2 1 1 }  { kernel_Din_A MemPortDIN2 1 32 }  { kernel_Dout_A MemPortDOUT2 0 32 }  { kernel_WEN_A MemPortWE2 1 4 }  { kernel_Clk_A mem_clk 1 1 }  { kernel_Rst_A mem_rst 1 1 }  { kernel_Addr_B MemPortADDR2 1 32 }  { kernel_EN_B MemPortCE2 1 1 }  { kernel_Din_B MemPortDIN2 1 32 }  { kernel_Dout_B MemPortDOUT2 0 32 }  { kernel_WEN_B MemPortWE2 1 4 }  { kernel_Clk_B mem_clk 1 1 }  { kernel_Rst_B mem_rst 1 1 } } }
	result { bram {  { result_Addr_A MemPortADDR2 1 32 }  { result_EN_A MemPortCE2 1 1 }  { result_Din_A MemPortDIN2 1 32 }  { result_Dout_A MemPortDOUT2 0 32 }  { result_WEN_A MemPortWE2 1 4 }  { result_Clk_A mem_clk 1 1 }  { result_Rst_A mem_rst 1 1 }  { result_Addr_B MemPortADDR2 1 32 }  { result_EN_B MemPortCE2 1 1 }  { result_Din_B MemPortDIN2 1 32 }  { result_Dout_B MemPortDOUT2 0 32 }  { result_WEN_B MemPortWE2 1 4 }  { result_Clk_B mem_clk 1 1 }  { result_Rst_B mem_rst 1 1 } } }
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
