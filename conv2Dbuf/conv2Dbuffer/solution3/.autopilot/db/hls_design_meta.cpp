#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("out_stream_V_TDATA", 32, hls_out, 0, "axis", "out_data", 1),
	Port_Property("out_stream_V_TVALID", 1, hls_out, 0, "axis", "out_vld", 1),
	Port_Property("out_stream_V_TREADY", 1, hls_in, 0, "axis", "out_acc", 1),
	Port_Property("in_stream_V_TDATA", 32, hls_in, 1, "axis", "in_data", 1),
	Port_Property("in_stream_V_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("in_stream_V_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("kernel_0_0", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("kernel_0_1", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("kernel_0_2", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("kernel_1_0", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("kernel_1_1", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("kernel_1_2", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("kernel_2_0", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("kernel_2_1", 32, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("kernel_2_2", 32, hls_in, 10, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "convolve_2d";
