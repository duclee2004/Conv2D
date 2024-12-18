// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="convolve_2d,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.742000,HLS_SYN_LAT=72,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=27,HLS_SYN_FF=1778,HLS_SYN_LUT=914,HLS_VERSION=2018_3}" *)

module convolve_2d (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_stream_V_TDATA,
        out_stream_V_TVALID,
        out_stream_V_TREADY,
        in_stream_V_TDATA,
        in_stream_V_TVALID,
        in_stream_V_TREADY,
        kernel_0_0,
        kernel_0_1,
        kernel_0_2,
        kernel_1_0,
        kernel_1_1,
        kernel_1_2,
        kernel_2_0,
        kernel_2_1,
        kernel_2_2
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_pp1_stage0 = 5'd8;
parameter    ap_ST_fsm_state11 = 5'd16;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] out_stream_V_TDATA;
output   out_stream_V_TVALID;
input   out_stream_V_TREADY;
input  [31:0] in_stream_V_TDATA;
input   in_stream_V_TVALID;
output   in_stream_V_TREADY;
input  [31:0] kernel_0_0;
input  [31:0] kernel_0_1;
input  [31:0] kernel_0_2;
input  [31:0] kernel_1_0;
input  [31:0] kernel_1_1;
input  [31:0] kernel_1_2;
input  [31:0] kernel_2_0;
input  [31:0] kernel_2_1;
input  [31:0] kernel_2_2;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] out_stream_V_1_data_out;
reg    out_stream_V_1_vld_in;
wire    out_stream_V_1_vld_out;
wire    out_stream_V_1_ack_in;
wire    out_stream_V_1_ack_out;
reg   [31:0] out_stream_V_1_payload_A;
reg   [31:0] out_stream_V_1_payload_B;
reg    out_stream_V_1_sel_rd;
reg    out_stream_V_1_sel_wr;
wire    out_stream_V_1_sel;
wire    out_stream_V_1_load_A;
wire    out_stream_V_1_load_B;
reg   [1:0] out_stream_V_1_state;
wire    out_stream_V_1_state_cmp_full;
reg   [31:0] in_stream_V_0_data_out;
wire    in_stream_V_0_vld_in;
wire    in_stream_V_0_vld_out;
wire    in_stream_V_0_ack_in;
reg    in_stream_V_0_ack_out;
reg   [31:0] in_stream_V_0_payload_A;
reg   [31:0] in_stream_V_0_payload_B;
reg    in_stream_V_0_sel_rd;
reg    in_stream_V_0_sel_wr;
wire    in_stream_V_0_sel;
wire    in_stream_V_0_load_A;
wire    in_stream_V_0_load_B;
reg   [1:0] in_stream_V_0_state;
wire    in_stream_V_0_state_cmp_full;
reg    out_stream_V_TDATA_blk_n;
reg    ap_enable_reg_pp1_iter5;
wire    ap_block_pp1_stage0;
reg   [0:0] or_cond_reg_573;
reg   [0:0] or_cond_reg_573_pp1_iter4_reg;
reg    ap_enable_reg_pp1_iter6;
reg   [0:0] or_cond_reg_573_pp1_iter5_reg;
reg    in_stream_V_TDATA_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] exitcond_flatten8_fu_340_p2;
reg   [5:0] indvar_flatten6_reg_219;
reg   [2:0] y_assign_reg_230;
reg   [2:0] x_assign_reg_241;
wire   [3:0] indvar_flatten_next_fu_290_p2;
wire    ap_CS_fsm_state2;
wire   [1:0] i_t_mid2_v_fu_316_p3;
wire   [0:0] exitcond_flatten_fu_284_p2;
wire   [2:0] j_1_fu_334_p2;
reg   [0:0] exitcond_flatten8_reg_540;
reg    ap_block_state4_pp1_stage0_iter0;
wire    ap_block_state5_pp1_stage0_iter1;
wire    ap_block_state6_pp1_stage0_iter2;
wire    ap_block_state7_pp1_stage0_iter3;
wire    ap_block_state8_pp1_stage0_iter4;
wire    ap_block_state9_pp1_stage0_iter5;
reg    ap_block_state9_io;
wire    ap_block_state10_pp1_stage0_iter6;
reg    ap_block_state10_io;
reg    ap_block_pp1_stage0_11001;
wire   [5:0] indvar_flatten_next7_fu_346_p2;
wire   [2:0] y_assign_mid2_fu_392_p3;
reg   [31:0] tmp_6_reg_554;
reg   [31:0] tmp_6_reg_554_pp1_iter1_reg;
reg   [2:0] line_buf_0_addr_1_reg_561;
reg   [2:0] line_buf_1_addr_1_reg_567;
wire   [0:0] or_cond_fu_412_p2;
reg   [0:0] or_cond_reg_573_pp1_iter1_reg;
reg   [0:0] or_cond_reg_573_pp1_iter2_reg;
reg   [0:0] or_cond_reg_573_pp1_iter3_reg;
wire   [2:0] x_fu_418_p2;
reg   [31:0] window_0_0_load_reg_582;
reg   [31:0] window_2_0_load_reg_587;
reg   [31:0] window_1_0_load_reg_592;
reg   [31:0] window_2_1_load_1_reg_597;
reg   [31:0] window_0_1_load_1_reg_602;
reg   [31:0] window_1_1_load_1_reg_607;
wire   [31:0] line_buf_0_q0;
reg   [31:0] window_0_2_reg_612;
reg    ap_enable_reg_pp1_iter1;
wire   [31:0] line_buf_1_q0;
reg   [31:0] window_1_2_reg_617;
wire   [31:0] grp_convolve_fu_252_ap_return;
wire    ap_CS_fsm_state3;
reg    ap_block_pp1_stage0_subdone;
reg    ap_enable_reg_pp1_iter2;
reg    ap_condition_pp1_exit_iter1_state5;
reg    ap_enable_reg_pp1_iter3;
reg    ap_enable_reg_pp1_iter4;
reg   [2:0] line_buf_0_address0;
reg    line_buf_0_ce0;
reg    line_buf_0_we0;
reg    line_buf_0_ce1;
reg    line_buf_0_we1;
reg   [2:0] line_buf_1_address0;
reg    line_buf_1_ce0;
reg    line_buf_1_we0;
reg    line_buf_1_ce1;
reg    line_buf_1_we1;
reg    grp_convolve_fu_252_ap_ce;
reg    ap_block_state4_pp1_stage0_iter0_ignore_call0;
wire    ap_block_state5_pp1_stage0_iter1_ignore_call0;
wire    ap_block_state6_pp1_stage0_iter2_ignore_call0;
wire    ap_block_state7_pp1_stage0_iter3_ignore_call0;
wire    ap_block_state8_pp1_stage0_iter4_ignore_call0;
wire    ap_block_state9_pp1_stage0_iter5_ignore_call0;
wire    ap_block_state10_pp1_stage0_iter6_ignore_call0;
reg    ap_block_pp1_stage0_11001_ignoreCallOp105;
reg   [3:0] indvar_flatten_reg_186;
reg   [1:0] i_reg_197;
reg   [2:0] j_reg_208;
wire   [63:0] tmp_3_fu_328_p1;
wire   [63:0] tmp_8_fu_400_p1;
reg   [31:0] window_2_1_fu_100;
reg   [31:0] window_0_0_fu_104;
reg   [31:0] window_0_1_fu_108;
reg   [31:0] window_2_0_fu_112;
reg   [31:0] window_1_0_fu_116;
reg   [31:0] window_1_1_fu_120;
reg    ap_block_pp1_stage0_01001;
wire   [0:0] tmp_1_fu_324_p1;
wire   [0:0] exitcond_fu_296_p2;
wire   [1:0] i_s_fu_310_p2;
wire   [2:0] j_mid2_fu_302_p3;
wire   [0:0] exitcond1_fu_352_p2;
wire   [2:0] y_fu_366_p2;
wire   [0:0] tmp_1_mid1_fu_372_p2;
wire   [0:0] tmp_s_fu_378_p2;
wire   [2:0] x_assign_mid2_fu_358_p3;
wire   [0:0] tmp_1_mid2_fu_384_p3;
wire   [0:0] tmp_7_fu_406_p2;
wire    ap_CS_fsm_state11;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 out_stream_V_1_sel_rd = 1'b0;
#0 out_stream_V_1_sel_wr = 1'b0;
#0 out_stream_V_1_state = 2'd0;
#0 in_stream_V_0_sel_rd = 1'b0;
#0 in_stream_V_0_sel_wr = 1'b0;
#0 in_stream_V_0_state = 2'd0;
#0 ap_enable_reg_pp1_iter5 = 1'b0;
#0 ap_enable_reg_pp1_iter6 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter3 = 1'b0;
#0 ap_enable_reg_pp1_iter4 = 1'b0;
end

convolve_2d_line_bkb #(
    .DataWidth( 32 ),
    .AddressRange( 7 ),
    .AddressWidth( 3 ))
line_buf_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(line_buf_0_address0),
    .ce0(line_buf_0_ce0),
    .we0(line_buf_0_we0),
    .d0(32'd0),
    .q0(line_buf_0_q0),
    .address1(line_buf_0_addr_1_reg_561),
    .ce1(line_buf_0_ce1),
    .we1(line_buf_0_we1),
    .d1(line_buf_1_q0)
);

convolve_2d_line_bkb #(
    .DataWidth( 32 ),
    .AddressRange( 7 ),
    .AddressWidth( 3 ))
line_buf_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(line_buf_1_address0),
    .ce0(line_buf_1_ce0),
    .we0(line_buf_1_we0),
    .d0(32'd0),
    .q0(line_buf_1_q0),
    .address1(line_buf_1_addr_1_reg_567),
    .ce1(line_buf_1_ce1),
    .we1(line_buf_1_we1),
    .d1(tmp_6_reg_554)
);

convolve grp_convolve_fu_252(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .window_0_0_read(window_0_0_load_reg_582),
    .window_0_1_read(window_0_1_load_1_reg_602),
    .window_0_2_read(window_0_2_reg_612),
    .window_1_0_read(window_1_0_load_reg_592),
    .window_1_1_read(window_1_1_load_1_reg_607),
    .window_1_2_read(window_1_2_reg_617),
    .window_2_0_read(window_2_0_load_reg_587),
    .window_2_1_read(window_2_1_load_1_reg_597),
    .window_2_2_read(tmp_6_reg_554_pp1_iter1_reg),
    .kernel_0_0(kernel_0_0),
    .kernel_0_1(kernel_0_1),
    .kernel_0_2(kernel_0_2),
    .kernel_1_0(kernel_1_0),
    .kernel_1_1(kernel_1_1),
    .kernel_1_2(kernel_1_2),
    .kernel_2_0(kernel_2_0),
    .kernel_2_1(kernel_2_1),
    .kernel_2_2(kernel_2_2),
    .ap_return(grp_convolve_fu_252_ap_return),
    .ap_ce(grp_convolve_fu_252_ap_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((exitcond_flatten8_fu_340_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter1_state5)) begin
                ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter0;
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter3 <= ap_enable_reg_pp1_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter4 <= ap_enable_reg_pp1_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter5 <= ap_enable_reg_pp1_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter6 <= ap_enable_reg_pp1_iter5;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp1_iter6 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        in_stream_V_0_sel_rd <= 1'b0;
    end else begin
        if (((in_stream_V_0_ack_out == 1'b1) & (in_stream_V_0_vld_out == 1'b1))) begin
            in_stream_V_0_sel_rd <= ~in_stream_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        in_stream_V_0_sel_wr <= 1'b0;
    end else begin
        if (((in_stream_V_0_ack_in == 1'b1) & (in_stream_V_0_vld_in == 1'b1))) begin
            in_stream_V_0_sel_wr <= ~in_stream_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        in_stream_V_0_state <= 2'd0;
    end else begin
        if ((((in_stream_V_0_state == 2'd2) & (in_stream_V_0_vld_in == 1'b0)) | ((in_stream_V_0_state == 2'd3) & (in_stream_V_0_vld_in == 1'b0) & (in_stream_V_0_ack_out == 1'b1)))) begin
            in_stream_V_0_state <= 2'd2;
        end else if ((((in_stream_V_0_state == 2'd1) & (in_stream_V_0_ack_out == 1'b0)) | ((in_stream_V_0_state == 2'd3) & (in_stream_V_0_ack_out == 1'b0) & (in_stream_V_0_vld_in == 1'b1)))) begin
            in_stream_V_0_state <= 2'd1;
        end else if (((~((in_stream_V_0_vld_in == 1'b0) & (in_stream_V_0_ack_out == 1'b1)) & ~((in_stream_V_0_ack_out == 1'b0) & (in_stream_V_0_vld_in == 1'b1)) & (in_stream_V_0_state == 2'd3)) | ((in_stream_V_0_state == 2'd1) & (in_stream_V_0_ack_out == 1'b1)) | ((in_stream_V_0_state == 2'd2) & (in_stream_V_0_vld_in == 1'b1)))) begin
            in_stream_V_0_state <= 2'd3;
        end else begin
            in_stream_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_stream_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_1_ack_out == 1'b1) & (out_stream_V_1_vld_out == 1'b1))) begin
            out_stream_V_1_sel_rd <= ~out_stream_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_stream_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_stream_V_1_ack_in == 1'b1) & (out_stream_V_1_vld_in == 1'b1))) begin
            out_stream_V_1_sel_wr <= ~out_stream_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        out_stream_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_1_state == 2'd2) & (out_stream_V_1_vld_in == 1'b0)) | ((out_stream_V_1_state == 2'd3) & (out_stream_V_1_vld_in == 1'b0) & (out_stream_V_1_ack_out == 1'b1)))) begin
            out_stream_V_1_state <= 2'd2;
        end else if ((((out_stream_V_1_state == 2'd1) & (out_stream_V_1_ack_out == 1'b0)) | ((out_stream_V_1_state == 2'd3) & (out_stream_V_1_ack_out == 1'b0) & (out_stream_V_1_vld_in == 1'b1)))) begin
            out_stream_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_1_vld_in == 1'b0) & (out_stream_V_1_ack_out == 1'b1)) & ~((out_stream_V_1_ack_out == 1'b0) & (out_stream_V_1_vld_in == 1'b1)) & (out_stream_V_1_state == 2'd3)) | ((out_stream_V_1_state == 2'd1) & (out_stream_V_1_ack_out == 1'b1)) | ((out_stream_V_1_state == 2'd2) & (out_stream_V_1_vld_in == 1'b1)))) begin
            out_stream_V_1_state <= 2'd3;
        end else begin
            out_stream_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_197 <= i_t_mid2_v_fu_316_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_197 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        indvar_flatten6_reg_219 <= 6'd0;
    end else if (((exitcond_flatten8_fu_340_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        indvar_flatten6_reg_219 <= indvar_flatten_next7_fu_346_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_186 <= indvar_flatten_next_fu_290_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_186 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_208 <= j_1_fu_334_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        j_reg_208 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_assign_reg_241 <= 3'd0;
    end else if (((exitcond_flatten8_fu_340_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        x_assign_reg_241 <= x_fu_418_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        y_assign_reg_230 <= 3'd0;
    end else if (((exitcond_flatten8_fu_340_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        y_assign_reg_230 <= y_assign_mid2_fu_392_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        exitcond_flatten8_reg_540 <= exitcond_flatten8_fu_340_p2;
        or_cond_reg_573_pp1_iter1_reg <= or_cond_reg_573;
        tmp_6_reg_554_pp1_iter1_reg <= tmp_6_reg_554;
        window_0_0_load_reg_582 <= window_0_0_fu_104;
        window_1_0_load_reg_592 <= window_1_0_fu_116;
        window_2_0_load_reg_587 <= window_2_0_fu_112;
    end
end

always @ (posedge ap_clk) begin
    if ((in_stream_V_0_load_A == 1'b1)) begin
        in_stream_V_0_payload_A <= in_stream_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((in_stream_V_0_load_B == 1'b1)) begin
        in_stream_V_0_payload_B <= in_stream_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten8_fu_340_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        line_buf_0_addr_1_reg_561 <= tmp_8_fu_400_p1;
        line_buf_1_addr_1_reg_567 <= tmp_8_fu_400_p1;
        or_cond_reg_573 <= or_cond_fu_412_p2;
        tmp_6_reg_554 <= in_stream_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp1_stage0_11001)) begin
        or_cond_reg_573_pp1_iter2_reg <= or_cond_reg_573_pp1_iter1_reg;
        or_cond_reg_573_pp1_iter3_reg <= or_cond_reg_573_pp1_iter2_reg;
        or_cond_reg_573_pp1_iter4_reg <= or_cond_reg_573_pp1_iter3_reg;
        or_cond_reg_573_pp1_iter5_reg <= or_cond_reg_573_pp1_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_1_load_A == 1'b1)) begin
        out_stream_V_1_payload_A <= grp_convolve_fu_252_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_1_load_B == 1'b1)) begin
        out_stream_V_1_payload_B <= grp_convolve_fu_252_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        window_0_0_fu_104 <= window_0_1_fu_108;
        window_1_0_fu_116 <= window_1_1_fu_120;
        window_2_0_fu_112 <= window_2_1_fu_100;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten8_reg_540 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        window_0_1_fu_108 <= line_buf_0_q0;
        window_0_2_reg_612 <= line_buf_0_q0;
        window_1_1_fu_120 <= line_buf_1_q0;
        window_1_2_reg_617 <= line_buf_1_q0;
        window_2_1_fu_100 <= tmp_6_reg_554;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten8_reg_540 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        window_0_1_load_1_reg_602 <= window_0_1_fu_108;
        window_1_1_load_1_reg_607 <= window_1_1_fu_120;
        window_2_1_load_1_reg_597 <= window_2_1_fu_100;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_condition_pp1_exit_iter1_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter1_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((out_stream_V_1_ack_in == 1'b1) & (out_stream_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter4 == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter6 == 1'b0) & (ap_enable_reg_pp1_iter5 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((out_stream_V_1_ack_in == 1'b1) & (out_stream_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001_ignoreCallOp105) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        grp_convolve_fu_252_ap_ce = 1'b1;
    end else begin
        grp_convolve_fu_252_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten8_fu_340_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        in_stream_V_0_ack_out = 1'b1;
    end else begin
        in_stream_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((in_stream_V_0_sel == 1'b1)) begin
        in_stream_V_0_data_out = in_stream_V_0_payload_B;
    end else begin
        in_stream_V_0_data_out = in_stream_V_0_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_flatten8_fu_340_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0))) begin
        in_stream_V_TDATA_blk_n = in_stream_V_0_state[1'd0];
    end else begin
        in_stream_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0))) begin
        line_buf_0_address0 = tmp_8_fu_400_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        line_buf_0_address0 = tmp_3_fu_328_p1;
    end else begin
        line_buf_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        line_buf_0_ce0 = 1'b1;
    end else begin
        line_buf_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        line_buf_0_ce1 = 1'b1;
    end else begin
        line_buf_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_fu_324_p1 == 1'd0) & (exitcond_flatten_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        line_buf_0_we0 = 1'b1;
    end else begin
        line_buf_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten8_reg_540 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        line_buf_0_we1 = 1'b1;
    end else begin
        line_buf_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0))) begin
        line_buf_1_address0 = tmp_8_fu_400_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        line_buf_1_address0 = tmp_3_fu_328_p1;
    end else begin
        line_buf_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        line_buf_1_ce0 = 1'b1;
    end else begin
        line_buf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        line_buf_1_ce1 = 1'b1;
    end else begin
        line_buf_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_fu_324_p1 == 1'd1) & (exitcond_flatten_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        line_buf_1_we0 = 1'b1;
    end else begin
        line_buf_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten8_reg_540 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        line_buf_1_we1 = 1'b1;
    end else begin
        line_buf_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((out_stream_V_1_sel == 1'b1)) begin
        out_stream_V_1_data_out = out_stream_V_1_payload_B;
    end else begin
        out_stream_V_1_data_out = out_stream_V_1_payload_A;
    end
end

always @ (*) begin
    if (((or_cond_reg_573_pp1_iter4_reg == 1'd1) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter5 == 1'b1))) begin
        out_stream_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((or_cond_reg_573_pp1_iter5_reg == 1'd1) & (ap_enable_reg_pp1_iter6 == 1'b1) & (1'b0 == ap_block_pp1_stage0)) | ((or_cond_reg_573_pp1_iter4_reg == 1'd1) & (ap_enable_reg_pp1_iter5 == 1'b1) & (1'b0 == ap_block_pp1_stage0)))) begin
        out_stream_V_TDATA_blk_n = out_stream_V_1_state[1'd1];
    end else begin
        out_stream_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_flatten_fu_284_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter2 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b0)) & ~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter6 == 1'b1) & (ap_enable_reg_pp1_iter5 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter2 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b0)) | ((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter6 == 1'b1) & (ap_enable_reg_pp1_iter5 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((out_stream_V_1_ack_in == 1'b1) & (out_stream_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((exitcond_flatten8_fu_340_p2 == 1'd0) & (in_stream_V_0_vld_out == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((exitcond_flatten8_fu_340_p2 == 1'd0) & (in_stream_V_0_vld_out == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b1)) | ((1'b1 == ap_block_state10_io) & (ap_enable_reg_pp1_iter6 == 1'b1)) | ((1'b1 == ap_block_state9_io) & (ap_enable_reg_pp1_iter5 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_11001_ignoreCallOp105 = (((exitcond_flatten8_fu_340_p2 == 1'd0) & (in_stream_V_0_vld_out == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b1)) | ((1'b1 == ap_block_state10_io) & (ap_enable_reg_pp1_iter6 == 1'b1)) | ((1'b1 == ap_block_state9_io) & (ap_enable_reg_pp1_iter5 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((exitcond_flatten8_fu_340_p2 == 1'd0) & (in_stream_V_0_vld_out == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b1)) | ((1'b1 == ap_block_state10_io) & (ap_enable_reg_pp1_iter6 == 1'b1)) | ((1'b1 == ap_block_state9_io) & (ap_enable_reg_pp1_iter5 == 1'b1)));
end

always @ (*) begin
    ap_block_state10_io = ((or_cond_reg_573_pp1_iter5_reg == 1'd1) & (out_stream_V_1_ack_in == 1'b0));
end

assign ap_block_state10_pp1_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp1_stage0_iter6_ignore_call0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp1_stage0_iter0 = ((exitcond_flatten8_fu_340_p2 == 1'd0) & (in_stream_V_0_vld_out == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp1_stage0_iter0_ignore_call0 = ((exitcond_flatten8_fu_340_p2 == 1'd0) & (in_stream_V_0_vld_out == 1'b0));
end

assign ap_block_state5_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp1_stage0_iter1_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp1_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp1_stage0_iter2_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp1_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp1_stage0_iter3_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp1_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp1_stage0_iter4_ignore_call0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_io = ((or_cond_reg_573_pp1_iter4_reg == 1'd1) & (out_stream_V_1_ack_in == 1'b0));
end

assign ap_block_state9_pp1_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter5_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond1_fu_352_p2 = ((x_assign_reg_241 == 3'd7) ? 1'b1 : 1'b0);

assign exitcond_flatten8_fu_340_p2 = ((indvar_flatten6_reg_219 == 6'd49) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_284_p2 = ((indvar_flatten_reg_186 == 4'd14) ? 1'b1 : 1'b0);

assign exitcond_fu_296_p2 = ((j_reg_208 == 3'd7) ? 1'b1 : 1'b0);

assign i_s_fu_310_p2 = (2'd1 + i_reg_197);

assign i_t_mid2_v_fu_316_p3 = ((exitcond_fu_296_p2[0:0] === 1'b1) ? i_s_fu_310_p2 : i_reg_197);

assign in_stream_V_0_ack_in = in_stream_V_0_state[1'd1];

assign in_stream_V_0_load_A = (in_stream_V_0_state_cmp_full & ~in_stream_V_0_sel_wr);

assign in_stream_V_0_load_B = (in_stream_V_0_state_cmp_full & in_stream_V_0_sel_wr);

assign in_stream_V_0_sel = in_stream_V_0_sel_rd;

assign in_stream_V_0_state_cmp_full = ((in_stream_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign in_stream_V_0_vld_in = in_stream_V_TVALID;

assign in_stream_V_0_vld_out = in_stream_V_0_state[1'd0];

assign in_stream_V_TREADY = in_stream_V_0_state[1'd1];

assign indvar_flatten_next7_fu_346_p2 = (indvar_flatten6_reg_219 + 6'd1);

assign indvar_flatten_next_fu_290_p2 = (indvar_flatten_reg_186 + 4'd1);

assign j_1_fu_334_p2 = (j_mid2_fu_302_p3 + 3'd1);

assign j_mid2_fu_302_p3 = ((exitcond_fu_296_p2[0:0] === 1'b1) ? 3'd0 : j_reg_208);

assign or_cond_fu_412_p2 = (tmp_7_fu_406_p2 & tmp_1_mid2_fu_384_p3);

assign out_stream_V_1_ack_in = out_stream_V_1_state[1'd1];

assign out_stream_V_1_ack_out = out_stream_V_TREADY;

assign out_stream_V_1_load_A = (out_stream_V_1_state_cmp_full & ~out_stream_V_1_sel_wr);

assign out_stream_V_1_load_B = (out_stream_V_1_state_cmp_full & out_stream_V_1_sel_wr);

assign out_stream_V_1_sel = out_stream_V_1_sel_rd;

assign out_stream_V_1_state_cmp_full = ((out_stream_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_stream_V_1_vld_out = out_stream_V_1_state[1'd0];

assign out_stream_V_TDATA = out_stream_V_1_data_out;

assign out_stream_V_TVALID = out_stream_V_1_state[1'd0];

assign tmp_1_fu_324_p1 = i_t_mid2_v_fu_316_p3[0:0];

assign tmp_1_mid1_fu_372_p2 = ((y_fu_366_p2 != 3'd0) ? 1'b1 : 1'b0);

assign tmp_1_mid2_fu_384_p3 = ((exitcond1_fu_352_p2[0:0] === 1'b1) ? tmp_1_mid1_fu_372_p2 : tmp_s_fu_378_p2);

assign tmp_3_fu_328_p1 = j_mid2_fu_302_p3;

assign tmp_7_fu_406_p2 = ((x_assign_mid2_fu_358_p3 != 3'd0) ? 1'b1 : 1'b0);

assign tmp_8_fu_400_p1 = x_assign_mid2_fu_358_p3;

assign tmp_s_fu_378_p2 = ((y_assign_reg_230 != 3'd0) ? 1'b1 : 1'b0);

assign x_assign_mid2_fu_358_p3 = ((exitcond1_fu_352_p2[0:0] === 1'b1) ? 3'd0 : x_assign_reg_241);

assign x_fu_418_p2 = (x_assign_mid2_fu_358_p3 + 3'd1);

assign y_assign_mid2_fu_392_p3 = ((exitcond1_fu_352_p2[0:0] === 1'b1) ? y_fu_366_p2 : y_assign_reg_230);

assign y_fu_366_p2 = (y_assign_reg_230 + 3'd1);

endmodule //convolve_2d
