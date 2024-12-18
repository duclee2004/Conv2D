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
	{ out_stream_V int 32 regular {axi_s 1 volatile  { out_stream_V Data } }  }
	{ in_stream_V int 32 regular {axi_s 0 volatile  { in_stream_V Data } }  }
	{ kernel_0_0 int 32 regular {pointer 0}  }
	{ kernel_0_1 int 32 regular {pointer 0}  }
	{ kernel_0_2 int 32 regular {pointer 0}  }
	{ kernel_1_0 int 32 regular {pointer 0}  }
	{ kernel_1_1 int 32 regular {pointer 0}  }
	{ kernel_1_2 int 32 regular {pointer 0}  }
	{ kernel_2_0 int 32 regular {pointer 0}  }
	{ kernel_2_1 int 32 regular {pointer 0}  }
	{ kernel_2_2 int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_stream_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "kernel_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_V_TDATA sc_out sc_lv 32 signal 0 } 
	{ out_stream_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ out_stream_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ in_stream_V_TDATA sc_in sc_lv 32 signal 1 } 
	{ in_stream_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_stream_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ kernel_0_0 sc_in sc_lv 32 signal 2 } 
	{ kernel_0_1 sc_in sc_lv 32 signal 3 } 
	{ kernel_0_2 sc_in sc_lv 32 signal 4 } 
	{ kernel_1_0 sc_in sc_lv 32 signal 5 } 
	{ kernel_1_1 sc_in sc_lv 32 signal 6 } 
	{ kernel_1_2 sc_in sc_lv 32 signal 7 } 
	{ kernel_2_0 sc_in sc_lv 32 signal 8 } 
	{ kernel_2_1 sc_in sc_lv 32 signal 9 } 
	{ kernel_2_2 sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V", "role": "TDATA" }} , 
 	{ "name": "out_stream_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V", "role": "TVALID" }} , 
 	{ "name": "out_stream_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V", "role": "TREADY" }} , 
 	{ "name": "in_stream_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V", "role": "TDATA" }} , 
 	{ "name": "in_stream_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V", "role": "TVALID" }} , 
 	{ "name": "in_stream_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V", "role": "TREADY" }} , 
 	{ "name": "kernel_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_0_0", "role": "default" }} , 
 	{ "name": "kernel_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_0_1", "role": "default" }} , 
 	{ "name": "kernel_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_0_2", "role": "default" }} , 
 	{ "name": "kernel_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_1_0", "role": "default" }} , 
 	{ "name": "kernel_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_1_1", "role": "default" }} , 
 	{ "name": "kernel_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_1_2", "role": "default" }} , 
 	{ "name": "kernel_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_2_0", "role": "default" }} , 
 	{ "name": "kernel_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_2_1", "role": "default" }} , 
 	{ "name": "kernel_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_2_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "convolve_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_stream_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_0_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_0_0"}]},
			{"Name" : "kernel_0_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_0_1"}]},
			{"Name" : "kernel_0_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_0_2"}]},
			{"Name" : "kernel_1_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_1_0"}]},
			{"Name" : "kernel_1_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_1_1"}]},
			{"Name" : "kernel_1_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_1_2"}]},
			{"Name" : "kernel_2_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_2_0"}]},
			{"Name" : "kernel_2_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_2_1"}]},
			{"Name" : "kernel_2_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolve_fu_252", "Port" : "kernel_2_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolve_fu_252", "Parent" : "0",
		"CDFG" : "convolve",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_2_2", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	convolve_2d {
		out_stream_V {Type O LastRead -1 FirstWrite 8}
		in_stream_V {Type I LastRead 3 FirstWrite -1}
		kernel_0_0 {Type I LastRead 0 FirstWrite -1}
		kernel_0_1 {Type I LastRead 0 FirstWrite -1}
		kernel_0_2 {Type I LastRead 0 FirstWrite -1}
		kernel_1_0 {Type I LastRead 0 FirstWrite -1}
		kernel_1_1 {Type I LastRead 0 FirstWrite -1}
		kernel_1_2 {Type I LastRead 0 FirstWrite -1}
		kernel_2_0 {Type I LastRead 0 FirstWrite -1}
		kernel_2_1 {Type I LastRead 0 FirstWrite -1}
		kernel_2_2 {Type I LastRead 0 FirstWrite -1}}
	convolve {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_1_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}
		kernel_0_0 {Type I LastRead 0 FirstWrite -1}
		kernel_0_1 {Type I LastRead 0 FirstWrite -1}
		kernel_0_2 {Type I LastRead 0 FirstWrite -1}
		kernel_1_0 {Type I LastRead 0 FirstWrite -1}
		kernel_1_1 {Type I LastRead 0 FirstWrite -1}
		kernel_1_2 {Type I LastRead 0 FirstWrite -1}
		kernel_2_0 {Type I LastRead 0 FirstWrite -1}
		kernel_2_1 {Type I LastRead 0 FirstWrite -1}
		kernel_2_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "73", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	out_stream_V { axis {  { out_stream_V_TDATA out_data 1 32 }  { out_stream_V_TVALID out_vld 1 1 }  { out_stream_V_TREADY out_acc 0 1 } } }
	in_stream_V { axis {  { in_stream_V_TDATA in_data 0 32 }  { in_stream_V_TVALID in_vld 0 1 }  { in_stream_V_TREADY in_acc 1 1 } } }
	kernel_0_0 { ap_none {  { kernel_0_0 in_data 0 32 } } }
	kernel_0_1 { ap_none {  { kernel_0_1 in_data 0 32 } } }
	kernel_0_2 { ap_none {  { kernel_0_2 in_data 0 32 } } }
	kernel_1_0 { ap_none {  { kernel_1_0 in_data 0 32 } } }
	kernel_1_1 { ap_none {  { kernel_1_1 in_data 0 32 } } }
	kernel_1_2 { ap_none {  { kernel_1_2 in_data 0 32 } } }
	kernel_2_0 { ap_none {  { kernel_2_0 in_data 0 32 } } }
	kernel_2_1 { ap_none {  { kernel_2_1 in_data 0 32 } } }
	kernel_2_2 { ap_none {  { kernel_2_2 in_data 0 32 } } }
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
