// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv2d,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.742000,HLS_SYN_LAT=5471,HLS_SYN_TPT=4506,HLS_SYN_MEM=4,HLS_SYN_DSP=6,HLS_SYN_FF=1098,HLS_SYN_LUT=11388,HLS_VERSION=2018_3}" *)

module conv2d (
        ap_clk,
        ap_rst,
        input_r_Addr_A,
        input_r_EN_A,
        input_r_Din_A,
        input_r_Dout_A,
        input_r_WEN_A,
        input_r_Clk_A,
        input_r_Rst_A,
        input_r_Addr_B,
        input_r_EN_B,
        input_r_Din_B,
        input_r_Dout_B,
        input_r_WEN_B,
        input_r_Clk_B,
        input_r_Rst_B,
        kernel_Addr_A,
        kernel_EN_A,
        kernel_Din_A,
        kernel_Dout_A,
        kernel_WEN_A,
        kernel_Clk_A,
        kernel_Rst_A,
        kernel_Addr_B,
        kernel_EN_B,
        kernel_Din_B,
        kernel_Dout_B,
        kernel_WEN_B,
        kernel_Clk_B,
        kernel_Rst_B,
        result_Addr_A,
        result_EN_A,
        result_Din_A,
        result_Dout_A,
        result_WEN_A,
        result_Clk_A,
        result_Rst_A,
        result_Addr_B,
        result_EN_B,
        result_Din_B,
        result_Dout_B,
        result_WEN_B,
        result_Clk_B,
        result_Rst_B,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
output  [31:0] input_r_Addr_A;
output   input_r_EN_A;
output  [31:0] input_r_Din_A;
input  [31:0] input_r_Dout_A;
output  [3:0] input_r_WEN_A;
output   input_r_Clk_A;
output   input_r_Rst_A;
output  [31:0] input_r_Addr_B;
output   input_r_EN_B;
output  [31:0] input_r_Din_B;
input  [31:0] input_r_Dout_B;
output  [3:0] input_r_WEN_B;
output   input_r_Clk_B;
output   input_r_Rst_B;
output  [31:0] kernel_Addr_A;
output   kernel_EN_A;
output  [31:0] kernel_Din_A;
input  [31:0] kernel_Dout_A;
output  [3:0] kernel_WEN_A;
output   kernel_Clk_A;
output   kernel_Rst_A;
output  [31:0] kernel_Addr_B;
output   kernel_EN_B;
output  [31:0] kernel_Din_B;
input  [31:0] kernel_Dout_B;
output  [3:0] kernel_WEN_B;
output   kernel_Clk_B;
output   kernel_Rst_B;
output  [31:0] result_Addr_A;
output   result_EN_A;
output  [31:0] result_Din_A;
input  [31:0] result_Dout_A;
output  [3:0] result_WEN_A;
output   result_Clk_A;
output   result_Rst_A;
output  [31:0] result_Addr_B;
output   result_EN_B;
output  [31:0] result_Din_B;
input  [31:0] result_Dout_B;
output  [3:0] result_WEN_B;
output   result_Clk_B;
output   result_Rst_B;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire   [31:0] buffer_i_q0;
wire   [31:0] buffer_i_q1;
wire   [31:0] buffer_t_q0;
wire   [31:0] buffer_t_q1;
wire   [31:0] output_i_q0;
wire   [31:0] output_i_q1;
wire   [31:0] output_t_q0;
wire   [31:0] output_t_q1;
wire    load_input_U0_ap_start;
wire    load_input_U0_ap_done;
wire    load_input_U0_ap_continue;
wire    load_input_U0_ap_idle;
wire    load_input_U0_ap_ready;
wire   [31:0] load_input_U0_input_r_Addr_A;
wire    load_input_U0_input_r_EN_A;
wire   [3:0] load_input_U0_input_r_WEN_A;
wire   [31:0] load_input_U0_input_r_Din_A;
wire   [31:0] load_input_U0_input_r_Addr_B;
wire    load_input_U0_input_r_EN_B;
wire   [3:0] load_input_U0_input_r_WEN_B;
wire   [31:0] load_input_U0_input_r_Din_B;
wire   [9:0] load_input_U0_buffer_r_address0;
wire    load_input_U0_buffer_r_ce0;
wire    load_input_U0_buffer_r_we0;
wire   [31:0] load_input_U0_buffer_r_d0;
wire   [9:0] load_input_U0_buffer_r_address1;
wire    load_input_U0_buffer_r_ce1;
wire    load_input_U0_buffer_r_we1;
wire   [31:0] load_input_U0_buffer_r_d1;
wire    ap_channel_done_buffer;
wire    load_input_U0_buffer_r_full_n;
wire    convolution_kernel_U0_ap_start;
wire    convolution_kernel_U0_ap_done;
wire    convolution_kernel_U0_ap_continue;
wire    convolution_kernel_U0_ap_idle;
wire    convolution_kernel_U0_ap_ready;
wire   [9:0] convolution_kernel_U0_buffer_r_address0;
wire    convolution_kernel_U0_buffer_r_ce0;
wire   [9:0] convolution_kernel_U0_buffer_r_address1;
wire    convolution_kernel_U0_buffer_r_ce1;
wire   [31:0] convolution_kernel_U0_kernel_Addr_A;
wire    convolution_kernel_U0_kernel_EN_A;
wire   [3:0] convolution_kernel_U0_kernel_WEN_A;
wire   [31:0] convolution_kernel_U0_kernel_Din_A;
wire   [31:0] convolution_kernel_U0_kernel_Addr_B;
wire    convolution_kernel_U0_kernel_EN_B;
wire   [3:0] convolution_kernel_U0_kernel_WEN_B;
wire   [31:0] convolution_kernel_U0_kernel_Din_B;
wire   [9:0] convolution_kernel_U0_output_r_address0;
wire    convolution_kernel_U0_output_r_ce0;
wire    convolution_kernel_U0_output_r_we0;
wire   [31:0] convolution_kernel_U0_output_r_d0;
wire    ap_channel_done_output;
wire    convolution_kernel_U0_output_r_full_n;
wire    write_output_U0_ap_start;
wire    write_output_U0_ap_done;
wire    write_output_U0_ap_continue;
wire    write_output_U0_ap_idle;
wire    write_output_U0_ap_ready;
wire   [9:0] write_output_U0_output_r_address0;
wire    write_output_U0_output_r_ce0;
wire   [9:0] write_output_U0_output_r_address1;
wire    write_output_U0_output_r_ce1;
wire   [31:0] write_output_U0_result_Addr_A;
wire    write_output_U0_result_EN_A;
wire   [3:0] write_output_U0_result_WEN_A;
wire   [31:0] write_output_U0_result_Din_A;
wire   [31:0] write_output_U0_result_Addr_B;
wire    write_output_U0_result_EN_B;
wire   [3:0] write_output_U0_result_WEN_B;
wire   [31:0] write_output_U0_result_Din_B;
wire    ap_sync_continue;
wire    buffer_i_full_n;
wire    buffer_t_empty_n;
wire    output_i_full_n;
wire    output_t_empty_n;
wire   [31:0] output_t_d1;
wire    output_t_we1;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_load_input_U0_ap_ready;
wire    ap_sync_load_input_U0_ap_ready;
reg   [1:0] load_input_U0_ap_ready_count;
reg    ap_sync_reg_convolution_kernel_U0_ap_ready;
wire    ap_sync_convolution_kernel_U0_ap_ready;
reg   [1:0] convolution_kernel_U0_ap_ready_count;
wire    load_input_U0_start_full_n;
wire    load_input_U0_start_write;
wire    convolution_kernel_U0_start_full_n;
wire    convolution_kernel_U0_start_write;
wire    write_output_U0_start_full_n;
wire    write_output_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_load_input_U0_ap_ready = 1'b0;
#0 load_input_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_convolution_kernel_U0_ap_ready = 1'b0;
#0 convolution_kernel_U0_ap_ready_count = 2'd0;
end

conv2d_buffer #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
buffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(load_input_U0_buffer_r_address0),
    .i_ce0(load_input_U0_buffer_r_ce0),
    .i_we0(load_input_U0_buffer_r_we0),
    .i_d0(load_input_U0_buffer_r_d0),
    .i_q0(buffer_i_q0),
    .i_address1(load_input_U0_buffer_r_address1),
    .i_ce1(load_input_U0_buffer_r_ce1),
    .i_we1(load_input_U0_buffer_r_we1),
    .i_d1(load_input_U0_buffer_r_d1),
    .i_q1(buffer_i_q1),
    .t_address0(convolution_kernel_U0_buffer_r_address0),
    .t_ce0(convolution_kernel_U0_buffer_r_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(buffer_t_q0),
    .t_address1(convolution_kernel_U0_buffer_r_address1),
    .t_ce1(convolution_kernel_U0_buffer_r_ce1),
    .t_we1(1'b0),
    .t_d1(32'd0),
    .t_q1(buffer_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buffer_i_full_n),
    .i_write(load_input_U0_ap_done),
    .t_empty_n(buffer_t_empty_n),
    .t_read(convolution_kernel_U0_ap_ready)
);

conv2d_output #(
    .DataWidth( 32 ),
    .AddressRange( 900 ),
    .AddressWidth( 10 ))
output_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(convolution_kernel_U0_output_r_address0),
    .i_ce0(convolution_kernel_U0_output_r_ce0),
    .i_we0(convolution_kernel_U0_output_r_we0),
    .i_d0(convolution_kernel_U0_output_r_d0),
    .i_q0(output_i_q0),
    .i_address1(10'd0),
    .i_ce1(1'b0),
    .i_q1(output_i_q1),
    .t_address0(write_output_U0_output_r_address0),
    .t_ce0(write_output_U0_output_r_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(output_t_q0),
    .t_address1(write_output_U0_output_r_address1),
    .t_ce1(write_output_U0_output_r_ce1),
    .t_q1(output_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(output_i_full_n),
    .i_write(convolution_kernel_U0_ap_done),
    .t_empty_n(output_t_empty_n),
    .t_read(write_output_U0_ap_ready)
);

load_input load_input_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(load_input_U0_ap_start),
    .ap_done(load_input_U0_ap_done),
    .ap_continue(load_input_U0_ap_continue),
    .ap_idle(load_input_U0_ap_idle),
    .ap_ready(load_input_U0_ap_ready),
    .input_r_Addr_A(load_input_U0_input_r_Addr_A),
    .input_r_EN_A(load_input_U0_input_r_EN_A),
    .input_r_WEN_A(load_input_U0_input_r_WEN_A),
    .input_r_Din_A(load_input_U0_input_r_Din_A),
    .input_r_Dout_A(input_r_Dout_A),
    .input_r_Addr_B(load_input_U0_input_r_Addr_B),
    .input_r_EN_B(load_input_U0_input_r_EN_B),
    .input_r_WEN_B(load_input_U0_input_r_WEN_B),
    .input_r_Din_B(load_input_U0_input_r_Din_B),
    .input_r_Dout_B(input_r_Dout_B),
    .buffer_r_address0(load_input_U0_buffer_r_address0),
    .buffer_r_ce0(load_input_U0_buffer_r_ce0),
    .buffer_r_we0(load_input_U0_buffer_r_we0),
    .buffer_r_d0(load_input_U0_buffer_r_d0),
    .buffer_r_address1(load_input_U0_buffer_r_address1),
    .buffer_r_ce1(load_input_U0_buffer_r_ce1),
    .buffer_r_we1(load_input_U0_buffer_r_we1),
    .buffer_r_d1(load_input_U0_buffer_r_d1)
);

convolution_kernel convolution_kernel_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(convolution_kernel_U0_ap_start),
    .ap_done(convolution_kernel_U0_ap_done),
    .ap_continue(convolution_kernel_U0_ap_continue),
    .ap_idle(convolution_kernel_U0_ap_idle),
    .ap_ready(convolution_kernel_U0_ap_ready),
    .buffer_r_address0(convolution_kernel_U0_buffer_r_address0),
    .buffer_r_ce0(convolution_kernel_U0_buffer_r_ce0),
    .buffer_r_q0(buffer_t_q0),
    .buffer_r_address1(convolution_kernel_U0_buffer_r_address1),
    .buffer_r_ce1(convolution_kernel_U0_buffer_r_ce1),
    .buffer_r_q1(buffer_t_q1),
    .kernel_Addr_A(convolution_kernel_U0_kernel_Addr_A),
    .kernel_EN_A(convolution_kernel_U0_kernel_EN_A),
    .kernel_WEN_A(convolution_kernel_U0_kernel_WEN_A),
    .kernel_Din_A(convolution_kernel_U0_kernel_Din_A),
    .kernel_Dout_A(kernel_Dout_A),
    .kernel_Addr_B(convolution_kernel_U0_kernel_Addr_B),
    .kernel_EN_B(convolution_kernel_U0_kernel_EN_B),
    .kernel_WEN_B(convolution_kernel_U0_kernel_WEN_B),
    .kernel_Din_B(convolution_kernel_U0_kernel_Din_B),
    .kernel_Dout_B(kernel_Dout_B),
    .output_r_address0(convolution_kernel_U0_output_r_address0),
    .output_r_ce0(convolution_kernel_U0_output_r_ce0),
    .output_r_we0(convolution_kernel_U0_output_r_we0),
    .output_r_d0(convolution_kernel_U0_output_r_d0)
);

write_output write_output_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(write_output_U0_ap_start),
    .ap_done(write_output_U0_ap_done),
    .ap_continue(write_output_U0_ap_continue),
    .ap_idle(write_output_U0_ap_idle),
    .ap_ready(write_output_U0_ap_ready),
    .output_r_address0(write_output_U0_output_r_address0),
    .output_r_ce0(write_output_U0_output_r_ce0),
    .output_r_q0(output_t_q0),
    .output_r_address1(write_output_U0_output_r_address1),
    .output_r_ce1(write_output_U0_output_r_ce1),
    .output_r_q1(output_t_q1),
    .result_Addr_A(write_output_U0_result_Addr_A),
    .result_EN_A(write_output_U0_result_EN_A),
    .result_WEN_A(write_output_U0_result_WEN_A),
    .result_Din_A(write_output_U0_result_Din_A),
    .result_Dout_A(32'd0),
    .result_Addr_B(write_output_U0_result_Addr_B),
    .result_EN_B(write_output_U0_result_EN_B),
    .result_WEN_B(write_output_U0_result_WEN_B),
    .result_Din_B(write_output_U0_result_Din_B),
    .result_Dout_B(32'd0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_convolution_kernel_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_convolution_kernel_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_convolution_kernel_U0_ap_ready <= ap_sync_convolution_kernel_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_load_input_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_load_input_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_load_input_U0_ap_ready <= ap_sync_load_input_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((convolution_kernel_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        convolution_kernel_U0_ap_ready_count <= (convolution_kernel_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (convolution_kernel_U0_ap_ready == 1'b1))) begin
        convolution_kernel_U0_ap_ready_count <= (convolution_kernel_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((load_input_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        load_input_U0_ap_ready_count <= (load_input_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (load_input_U0_ap_ready == 1'b1))) begin
        load_input_U0_ap_ready_count <= (load_input_U0_ap_ready_count + 2'd1);
    end
end

assign ap_channel_done_buffer = load_input_U0_ap_done;

assign ap_channel_done_output = convolution_kernel_U0_ap_done;

assign ap_done = write_output_U0_ap_done;

assign ap_idle = (write_output_U0_ap_idle & load_input_U0_ap_idle & (output_t_empty_n ^ 1'b1) & (buffer_t_empty_n ^ 1'b1) & convolution_kernel_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_convolution_kernel_U0_ap_ready = (convolution_kernel_U0_ap_ready | ap_sync_reg_convolution_kernel_U0_ap_ready);

assign ap_sync_done = write_output_U0_ap_done;

assign ap_sync_load_input_U0_ap_ready = (load_input_U0_ap_ready | ap_sync_reg_load_input_U0_ap_ready);

assign ap_sync_ready = (ap_sync_load_input_U0_ap_ready & ap_sync_convolution_kernel_U0_ap_ready);

assign convolution_kernel_U0_ap_continue = output_i_full_n;

assign convolution_kernel_U0_ap_start = ((ap_sync_reg_convolution_kernel_U0_ap_ready ^ 1'b1) & buffer_t_empty_n & ap_start);

assign convolution_kernel_U0_output_r_full_n = output_i_full_n;

assign convolution_kernel_U0_start_full_n = 1'b1;

assign convolution_kernel_U0_start_write = 1'b0;

assign input_r_Addr_A = load_input_U0_input_r_Addr_A;

assign input_r_Addr_B = load_input_U0_input_r_Addr_B;

assign input_r_Clk_A = ap_clk;

assign input_r_Clk_B = ap_clk;

assign input_r_Din_A = 32'd0;

assign input_r_Din_B = 32'd0;

assign input_r_EN_A = load_input_U0_input_r_EN_A;

assign input_r_EN_B = load_input_U0_input_r_EN_B;

assign input_r_Rst_A = ap_rst;

assign input_r_Rst_B = ap_rst;

assign input_r_WEN_A = 1'b0;

assign input_r_WEN_B = 1'b0;

assign kernel_Addr_A = convolution_kernel_U0_kernel_Addr_A;

assign kernel_Addr_B = convolution_kernel_U0_kernel_Addr_B;

assign kernel_Clk_A = ap_clk;

assign kernel_Clk_B = ap_clk;

assign kernel_Din_A = 32'd0;

assign kernel_Din_B = 32'd0;

assign kernel_EN_A = convolution_kernel_U0_kernel_EN_A;

assign kernel_EN_B = convolution_kernel_U0_kernel_EN_B;

assign kernel_Rst_A = ap_rst;

assign kernel_Rst_B = ap_rst;

assign kernel_WEN_A = 1'b0;

assign kernel_WEN_B = 1'b0;

assign load_input_U0_ap_continue = buffer_i_full_n;

assign load_input_U0_ap_start = ((ap_sync_reg_load_input_U0_ap_ready ^ 1'b1) & ap_start);

assign load_input_U0_buffer_r_full_n = buffer_i_full_n;

assign load_input_U0_start_full_n = 1'b1;

assign load_input_U0_start_write = 1'b0;

assign output_t_d1 = 32'd0;

assign output_t_we1 = 1'b0;

assign result_Addr_A = write_output_U0_result_Addr_A;

assign result_Addr_B = write_output_U0_result_Addr_B;

assign result_Clk_A = ap_clk;

assign result_Clk_B = ap_clk;

assign result_Din_A = write_output_U0_result_Din_A;

assign result_Din_B = write_output_U0_result_Din_B;

assign result_EN_A = write_output_U0_result_EN_A;

assign result_EN_B = write_output_U0_result_EN_B;

assign result_Rst_A = ap_rst;

assign result_Rst_B = ap_rst;

assign result_WEN_A = write_output_U0_result_WEN_A;

assign result_WEN_B = write_output_U0_result_WEN_B;

assign write_output_U0_ap_continue = 1'b1;

assign write_output_U0_ap_start = output_t_empty_n;

assign write_output_U0_start_full_n = 1'b1;

assign write_output_U0_start_write = 1'b0;

endmodule //conv2d
