// ==============================================================
// File generated on Wed Dec 18 17:00:41 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      convolve_2d
`define AUTOTB_DUT_INST AESL_inst_convolve_2d
`define AUTOTB_TOP      apatb_convolve_2d_top
`define AUTOTB_LAT_RESULT_FILE "convolve_2d.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "convolve_2d.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_convolve_2d_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_out_stream_V 1
`define AESL_DEPTH_in_stream_V 1
`define AESL_DEPTH_kernel_0_0 1
`define AESL_DEPTH_kernel_0_1 1
`define AESL_DEPTH_kernel_0_2 1
`define AESL_DEPTH_kernel_1_0 1
`define AESL_DEPTH_kernel_1_1 1
`define AESL_DEPTH_kernel_1_2 1
`define AESL_DEPTH_kernel_2_0 1
`define AESL_DEPTH_kernel_2_1 1
`define AESL_DEPTH_kernel_2_2 1
`define AUTOTB_TVIN_out_stream_V  "../tv/cdatafile/c.convolve_2d.autotvin_out_stream_V.dat"
`define AUTOTB_TVIN_in_stream_V  "../tv/cdatafile/c.convolve_2d.autotvin_in_stream_V.dat"
`define AUTOTB_TVIN_kernel_0_0  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_0_0.dat"
`define AUTOTB_TVIN_kernel_0_1  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_0_1.dat"
`define AUTOTB_TVIN_kernel_0_2  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_0_2.dat"
`define AUTOTB_TVIN_kernel_1_0  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_1_0.dat"
`define AUTOTB_TVIN_kernel_1_1  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_1_1.dat"
`define AUTOTB_TVIN_kernel_1_2  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_1_2.dat"
`define AUTOTB_TVIN_kernel_2_0  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_2_0.dat"
`define AUTOTB_TVIN_kernel_2_1  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_2_1.dat"
`define AUTOTB_TVIN_kernel_2_2  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_2_2.dat"
`define AUTOTB_TVIN_out_stream_V_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_out_stream_V.dat"
`define AUTOTB_TVIN_in_stream_V_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_in_stream_V.dat"
`define AUTOTB_TVIN_kernel_0_0_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_0_0.dat"
`define AUTOTB_TVIN_kernel_0_1_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_0_1.dat"
`define AUTOTB_TVIN_kernel_0_2_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_0_2.dat"
`define AUTOTB_TVIN_kernel_1_0_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_1_0.dat"
`define AUTOTB_TVIN_kernel_1_1_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_1_1.dat"
`define AUTOTB_TVIN_kernel_1_2_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_1_2.dat"
`define AUTOTB_TVIN_kernel_2_0_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_2_0.dat"
`define AUTOTB_TVIN_kernel_2_1_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_2_1.dat"
`define AUTOTB_TVIN_kernel_2_2_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvin_kernel_2_2.dat"
`define AUTOTB_TVOUT_out_stream_V  "../tv/cdatafile/c.convolve_2d.autotvout_out_stream_V.dat"
`define AUTOTB_TVOUT_out_stream_V_out_wrapc  "../tv/rtldatafile/rtl.convolve_2d.autotvout_out_stream_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 72;
parameter LENGTH_out_stream_V = 36;
parameter LENGTH_in_stream_V = 49;
parameter LENGTH_kernel_0_0 = 1;
parameter LENGTH_kernel_0_1 = 1;
parameter LENGTH_kernel_0_2 = 1;
parameter LENGTH_kernel_1_0 = 1;
parameter LENGTH_kernel_1_1 = 1;
parameter LENGTH_kernel_1_2 = 1;
parameter LENGTH_kernel_2_0 = 1;
parameter LENGTH_kernel_2_1 = 1;
parameter LENGTH_kernel_2_2 = 1;

task read_token;
    input integer fp;
    output reg [175 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] out_stream_V_TDATA;
wire  out_stream_V_TVALID;
wire  out_stream_V_TREADY;
wire [31 : 0] in_stream_V_TDATA;
wire  in_stream_V_TVALID;
wire  in_stream_V_TREADY;
wire [31 : 0] kernel_0_0;
wire [31 : 0] kernel_0_1;
wire [31 : 0] kernel_0_2;
wire [31 : 0] kernel_1_0;
wire [31 : 0] kernel_1_1;
wire [31 : 0] kernel_1_2;
wire [31 : 0] kernel_2_0;
wire [31 : 0] kernel_2_1;
wire [31 : 0] kernel_2_2;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .out_stream_V_TDATA(out_stream_V_TDATA),
    .out_stream_V_TVALID(out_stream_V_TVALID),
    .out_stream_V_TREADY(out_stream_V_TREADY),
    .in_stream_V_TDATA(in_stream_V_TDATA),
    .in_stream_V_TVALID(in_stream_V_TVALID),
    .in_stream_V_TREADY(in_stream_V_TREADY),
    .kernel_0_0(kernel_0_0),
    .kernel_0_1(kernel_0_1),
    .kernel_0_2(kernel_0_2),
    .kernel_1_0(kernel_1_0),
    .kernel_1_1(kernel_1_1),
    .kernel_1_2(kernel_1_2),
    .kernel_2_0(kernel_2_0),
    .kernel_2_1(kernel_2_1),
    .kernel_2_2(kernel_2_2));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end


// The signal of port kernel_0_0
reg [31: 0] AESL_REG_kernel_0_0 = 0;
assign kernel_0_0 = AESL_REG_kernel_0_0;
initial begin : read_file_process_kernel_0_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_0_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_0_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_0_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_0_1
reg [31: 0] AESL_REG_kernel_0_1 = 0;
assign kernel_0_1 = AESL_REG_kernel_0_1;
initial begin : read_file_process_kernel_0_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_0_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_0_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_0_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_0_2
reg [31: 0] AESL_REG_kernel_0_2 = 0;
assign kernel_0_2 = AESL_REG_kernel_0_2;
initial begin : read_file_process_kernel_0_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_0_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_0_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_0_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_1_0
reg [31: 0] AESL_REG_kernel_1_0 = 0;
assign kernel_1_0 = AESL_REG_kernel_1_0;
initial begin : read_file_process_kernel_1_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_1_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_1_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_1_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_1_1
reg [31: 0] AESL_REG_kernel_1_1 = 0;
assign kernel_1_1 = AESL_REG_kernel_1_1;
initial begin : read_file_process_kernel_1_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_1_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_1_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_1_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_1_2
reg [31: 0] AESL_REG_kernel_1_2 = 0;
assign kernel_1_2 = AESL_REG_kernel_1_2;
initial begin : read_file_process_kernel_1_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_1_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_1_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_1_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_2_0
reg [31: 0] AESL_REG_kernel_2_0 = 0;
assign kernel_2_0 = AESL_REG_kernel_2_0;
initial begin : read_file_process_kernel_2_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_2_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_2_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_2_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_2_1
reg [31: 0] AESL_REG_kernel_2_1 = 0;
assign kernel_2_1 = AESL_REG_kernel_2_1;
initial begin : read_file_process_kernel_2_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_2_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_2_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_2_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port kernel_2_2
reg [31: 0] AESL_REG_kernel_2_2 = 0;
assign kernel_2_2 = AESL_REG_kernel_2_2;
initial begin : read_file_process_kernel_2_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [175  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_kernel_2_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_kernel_2_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_kernel_2_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


reg [31:0] ap_c_n_tvin_trans_num_out_stream_V;

reg out_stream_V_ready_reg; // for self-sync

wire out_stream_V_ready;
wire out_stream_V_done;
wire [31:0] out_stream_V_transaction;
wire axi_s_out_stream_V_TVALID;
wire axi_s_out_stream_V_TREADY;

AESL_axi_s_out_stream_V AESL_AXI_S_out_stream_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_out_stream_V_TDATA(out_stream_V_TDATA),
    .TRAN_out_stream_V_TVALID(axi_s_out_stream_V_TVALID),
    .TRAN_out_stream_V_TREADY(axi_s_out_stream_V_TREADY),
    .ready(out_stream_V_ready),
    .done(out_stream_V_done),
    .transaction(out_stream_V_transaction));

assign out_stream_V_ready = 0;
assign out_stream_V_done = AESL_done;

assign axi_s_out_stream_V_TVALID = out_stream_V_TVALID;

reg reg_out_stream_V_TREADY;
initial begin : gen_reg_out_stream_V_TREADY_process
    integer proc_rand;
    reg_out_stream_V_TREADY = axi_s_out_stream_V_TREADY;
    while(1)
    begin
        @(axi_s_out_stream_V_TREADY);
        reg_out_stream_V_TREADY = axi_s_out_stream_V_TREADY;
    end
end


assign out_stream_V_TREADY = reg_out_stream_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_V;

reg in_stream_V_ready_reg; // for self-sync

wire in_stream_V_ready;
wire in_stream_V_done;
wire [31:0] in_stream_V_transaction;
wire axi_s_in_stream_V_TVALID;
wire axi_s_in_stream_V_TREADY;

AESL_axi_s_in_stream_V AESL_AXI_S_in_stream_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in_stream_V_TDATA(in_stream_V_TDATA),
    .TRAN_in_stream_V_TVALID(axi_s_in_stream_V_TVALID),
    .TRAN_in_stream_V_TREADY(axi_s_in_stream_V_TREADY),
    .ready(in_stream_V_ready),
    .done(in_stream_V_done),
    .transaction(in_stream_V_transaction));

assign in_stream_V_ready = in_stream_V_ready_reg | ready_initial;
assign in_stream_V_done = 0;

assign in_stream_V_TVALID = axi_s_in_stream_V_TVALID;

assign axi_s_in_stream_V_TREADY = in_stream_V_TREADY;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_out_stream_V;
reg [31:0] size_out_stream_V;
reg [31:0] size_out_stream_V_backup;
reg end_in_stream_V;
reg [31:0] size_in_stream_V;
reg [31:0] size_in_stream_V_backup;
reg end_kernel_0_0;
reg [31:0] size_kernel_0_0;
reg [31:0] size_kernel_0_0_backup;
reg end_kernel_0_1;
reg [31:0] size_kernel_0_1;
reg [31:0] size_kernel_0_1_backup;
reg end_kernel_0_2;
reg [31:0] size_kernel_0_2;
reg [31:0] size_kernel_0_2_backup;
reg end_kernel_1_0;
reg [31:0] size_kernel_1_0;
reg [31:0] size_kernel_1_0_backup;
reg end_kernel_1_1;
reg [31:0] size_kernel_1_1;
reg [31:0] size_kernel_1_1_backup;
reg end_kernel_1_2;
reg [31:0] size_kernel_1_2;
reg [31:0] size_kernel_1_2_backup;
reg end_kernel_2_0;
reg [31:0] size_kernel_2_0;
reg [31:0] size_kernel_2_0_backup;
reg end_kernel_2_1;
reg [31:0] size_kernel_2_1;
reg [31:0] size_kernel_2_1_backup;
reg end_kernel_2_2;
reg [31:0] size_kernel_2_2;
reg [31:0] size_kernel_2_2_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_in_stream_V
        in_stream_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in_stream_V or in_stream_V_transaction);
            if (ap_c_n_tvin_trans_num_in_stream_V > in_stream_V_transaction) begin
                in_stream_V_ready_reg = 1;
            end else begin
                in_stream_V_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_in_stream_V "../tv/stream_size/stream_size_in_in_stream_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in_stream_V
        integer fp_in_stream_V;
        reg [127:0] token_in_stream_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_in_stream_V = 0;
        end_in_stream_V = 0;
        wait (AESL_reset === 1);
        
        fp_in_stream_V = $fopen(`STREAM_SIZE_IN_in_stream_V, "r");
        if(fp_in_stream_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in_stream_V);
            $finish;
        end
        read_token(fp_in_stream_V, token_in_stream_V); // should be [[[runtime]]]
        if (token_in_stream_V != "[[[runtime]]]") begin
            $display("ERROR: token_in_stream_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_in_stream_V = 0;
        size_in_stream_V_backup = 0;
        while (size_in_stream_V == 0 && end_in_stream_V == 0) begin
            ap_c_n_tvin_trans_num_in_stream_V = ap_c_n_tvin_trans_num_in_stream_V + 1;
            read_token(fp_in_stream_V, token_in_stream_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_in_stream_V == "[[transaction]]") begin
                read_token(fp_in_stream_V, token_in_stream_V); // should be transaction number
                read_token(fp_in_stream_V, token_in_stream_V); // should be size for hls::stream
                ret = $sscanf(token_in_stream_V, "%d", size_in_stream_V);
                if (size_in_stream_V > 0) begin
                    size_in_stream_V_backup = size_in_stream_V;
                end
                read_token(fp_in_stream_V, token_in_stream_V); // should be [[/transaction]]
            end else if (token_in_stream_V == "[[[/runtime]]]") begin
                $fclose(fp_in_stream_V);
                end_in_stream_V = 1;
            end else begin
                $display("ERROR: unknown token_in_stream_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in_stream_V == 0) begin
                if ((in_stream_V_TREADY & in_stream_V_TVALID) == 1) begin
                    if (size_in_stream_V > 0) begin
                        size_in_stream_V = size_in_stream_V - 1;
                        while (size_in_stream_V == 0 && end_in_stream_V == 0) begin
                            ap_c_n_tvin_trans_num_in_stream_V = ap_c_n_tvin_trans_num_in_stream_V + 1;
                            read_token(fp_in_stream_V, token_in_stream_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in_stream_V == "[[transaction]]") begin
                                read_token(fp_in_stream_V, token_in_stream_V); // should be transaction number
                                read_token(fp_in_stream_V, token_in_stream_V); // should be size for hls::stream
                                ret = $sscanf(token_in_stream_V, "%d", size_in_stream_V);
                                if (size_in_stream_V > 0) begin
                                    size_in_stream_V_backup = size_in_stream_V;
                                end
                                read_token(fp_in_stream_V, token_in_stream_V); // should be [[/transaction]]
                            end else if (token_in_stream_V == "[[[/runtime]]]") begin
                                size_in_stream_V = size_in_stream_V_backup;
                                $fclose(fp_in_stream_V);
                                end_in_stream_V = 1;
                            end else begin
                                $display("ERROR: unknown token_in_stream_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in_stream_V_TREADY & in_stream_V_TVALID) == 1) begin
                    if (size_in_stream_V > 0) begin
                        size_in_stream_V = size_in_stream_V - 1;
                        if (size_in_stream_V == 0) begin
                            ap_c_n_tvin_trans_num_in_stream_V = ap_c_n_tvin_trans_num_in_stream_V + 1;
                            size_in_stream_V = size_in_stream_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_out_stream_V;

initial begin : dump_tvout_runtime_sign_out_stream_V
    integer fp;
    dump_tvout_finish_out_stream_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
