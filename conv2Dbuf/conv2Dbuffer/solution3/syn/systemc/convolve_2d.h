// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _convolve_2d_HH_
#define _convolve_2d_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "convolve.h"
#include "convolve_2d_line_bkb.h"

namespace ap_rtl {

struct convolve_2d : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > out_stream_V_TDATA;
    sc_out< sc_logic > out_stream_V_TVALID;
    sc_in< sc_logic > out_stream_V_TREADY;
    sc_in< sc_lv<32> > in_stream_V_TDATA;
    sc_in< sc_logic > in_stream_V_TVALID;
    sc_out< sc_logic > in_stream_V_TREADY;
    sc_in< sc_lv<32> > kernel_0_0;
    sc_in< sc_lv<32> > kernel_0_1;
    sc_in< sc_lv<32> > kernel_0_2;
    sc_in< sc_lv<32> > kernel_1_0;
    sc_in< sc_lv<32> > kernel_1_1;
    sc_in< sc_lv<32> > kernel_1_2;
    sc_in< sc_lv<32> > kernel_2_0;
    sc_in< sc_lv<32> > kernel_2_1;
    sc_in< sc_lv<32> > kernel_2_2;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    convolve_2d(sc_module_name name);
    SC_HAS_PROCESS(convolve_2d);

    ~convolve_2d();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    convolve_2d_line_bkb* line_buf_0_U;
    convolve_2d_line_bkb* line_buf_1_U;
    convolve* grp_convolve_fu_252;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > out_stream_V_1_data_out;
    sc_signal< sc_logic > out_stream_V_1_vld_in;
    sc_signal< sc_logic > out_stream_V_1_vld_out;
    sc_signal< sc_logic > out_stream_V_1_ack_in;
    sc_signal< sc_logic > out_stream_V_1_ack_out;
    sc_signal< sc_lv<32> > out_stream_V_1_payload_A;
    sc_signal< sc_lv<32> > out_stream_V_1_payload_B;
    sc_signal< sc_logic > out_stream_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_V_1_sel_wr;
    sc_signal< sc_logic > out_stream_V_1_sel;
    sc_signal< sc_logic > out_stream_V_1_load_A;
    sc_signal< sc_logic > out_stream_V_1_load_B;
    sc_signal< sc_lv<2> > out_stream_V_1_state;
    sc_signal< sc_logic > out_stream_V_1_state_cmp_full;
    sc_signal< sc_lv<32> > in_stream_V_0_data_out;
    sc_signal< sc_logic > in_stream_V_0_vld_in;
    sc_signal< sc_logic > in_stream_V_0_vld_out;
    sc_signal< sc_logic > in_stream_V_0_ack_in;
    sc_signal< sc_logic > in_stream_V_0_ack_out;
    sc_signal< sc_lv<32> > in_stream_V_0_payload_A;
    sc_signal< sc_lv<32> > in_stream_V_0_payload_B;
    sc_signal< sc_logic > in_stream_V_0_sel_rd;
    sc_signal< sc_logic > in_stream_V_0_sel_wr;
    sc_signal< sc_logic > in_stream_V_0_sel;
    sc_signal< sc_logic > in_stream_V_0_load_A;
    sc_signal< sc_logic > in_stream_V_0_load_B;
    sc_signal< sc_lv<2> > in_stream_V_0_state;
    sc_signal< sc_logic > in_stream_V_0_state_cmp_full;
    sc_signal< sc_logic > out_stream_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter5;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > or_cond_reg_573;
    sc_signal< sc_lv<1> > or_cond_reg_573_pp1_iter4_reg;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter6;
    sc_signal< sc_lv<1> > or_cond_reg_573_pp1_iter5_reg;
    sc_signal< sc_logic > in_stream_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<1> > exitcond_flatten8_fu_340_p2;
    sc_signal< sc_lv<6> > indvar_flatten6_reg_219;
    sc_signal< sc_lv<3> > y_assign_reg_230;
    sc_signal< sc_lv<3> > x_assign_reg_241;
    sc_signal< sc_lv<4> > indvar_flatten_next_fu_290_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > i_t_mid2_v_fu_316_p3;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_284_p2;
    sc_signal< sc_lv<3> > j_1_fu_334_p2;
    sc_signal< sc_lv<1> > exitcond_flatten8_reg_540;
    sc_signal< bool > ap_block_state4_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter3;
    sc_signal< bool > ap_block_state8_pp1_stage0_iter4;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter5;
    sc_signal< bool > ap_block_state9_io;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter6;
    sc_signal< bool > ap_block_state10_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<6> > indvar_flatten_next7_fu_346_p2;
    sc_signal< sc_lv<3> > y_assign_mid2_fu_392_p3;
    sc_signal< sc_lv<32> > tmp_6_reg_554;
    sc_signal< sc_lv<32> > tmp_6_reg_554_pp1_iter1_reg;
    sc_signal< sc_lv<3> > line_buf_0_addr_1_reg_561;
    sc_signal< sc_lv<3> > line_buf_1_addr_1_reg_567;
    sc_signal< sc_lv<1> > or_cond_fu_412_p2;
    sc_signal< sc_lv<1> > or_cond_reg_573_pp1_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_reg_573_pp1_iter2_reg;
    sc_signal< sc_lv<1> > or_cond_reg_573_pp1_iter3_reg;
    sc_signal< sc_lv<3> > x_fu_418_p2;
    sc_signal< sc_lv<32> > window_0_0_load_reg_582;
    sc_signal< sc_lv<32> > window_2_0_load_reg_587;
    sc_signal< sc_lv<32> > window_1_0_load_reg_592;
    sc_signal< sc_lv<32> > window_2_1_load_1_reg_597;
    sc_signal< sc_lv<32> > window_0_1_load_1_reg_602;
    sc_signal< sc_lv<32> > window_1_1_load_1_reg_607;
    sc_signal< sc_lv<32> > line_buf_0_q0;
    sc_signal< sc_lv<32> > window_0_2_reg_612;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<32> > line_buf_1_q0;
    sc_signal< sc_lv<32> > window_1_2_reg_617;
    sc_signal< sc_lv<32> > grp_convolve_fu_252_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter1_state5;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter4;
    sc_signal< sc_lv<3> > line_buf_0_address0;
    sc_signal< sc_logic > line_buf_0_ce0;
    sc_signal< sc_logic > line_buf_0_we0;
    sc_signal< sc_logic > line_buf_0_ce1;
    sc_signal< sc_logic > line_buf_0_we1;
    sc_signal< sc_lv<3> > line_buf_1_address0;
    sc_signal< sc_logic > line_buf_1_ce0;
    sc_signal< sc_logic > line_buf_1_we0;
    sc_signal< sc_logic > line_buf_1_ce1;
    sc_signal< sc_logic > line_buf_1_we1;
    sc_signal< sc_logic > grp_convolve_fu_252_ap_ce;
    sc_signal< bool > ap_block_state4_pp1_stage0_iter0_ignore_call0;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter1_ignore_call0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter2_ignore_call0;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter3_ignore_call0;
    sc_signal< bool > ap_block_state8_pp1_stage0_iter4_ignore_call0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter5_ignore_call0;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter6_ignore_call0;
    sc_signal< bool > ap_block_pp1_stage0_11001_ignoreCallOp105;
    sc_signal< sc_lv<4> > indvar_flatten_reg_186;
    sc_signal< sc_lv<2> > i_reg_197;
    sc_signal< sc_lv<3> > j_reg_208;
    sc_signal< sc_lv<64> > tmp_3_fu_328_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_400_p1;
    sc_signal< sc_lv<32> > window_2_1_fu_100;
    sc_signal< sc_lv<32> > window_0_0_fu_104;
    sc_signal< sc_lv<32> > window_0_1_fu_108;
    sc_signal< sc_lv<32> > window_2_0_fu_112;
    sc_signal< sc_lv<32> > window_1_0_fu_116;
    sc_signal< sc_lv<32> > window_1_1_fu_120;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<1> > tmp_fu_324_p1;
    sc_signal< sc_lv<1> > exitcond_fu_296_p2;
    sc_signal< sc_lv<2> > i_s_fu_310_p2;
    sc_signal< sc_lv<3> > j_mid2_fu_302_p3;
    sc_signal< sc_lv<1> > exitcond1_fu_352_p2;
    sc_signal< sc_lv<3> > y_fu_366_p2;
    sc_signal< sc_lv<1> > tmp_1_mid1_fu_372_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_378_p2;
    sc_signal< sc_lv<3> > x_assign_mid2_fu_358_p3;
    sc_signal< sc_lv<1> > tmp_1_mid2_fu_384_p3;
    sc_signal< sc_lv<1> > tmp_7_fu_406_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_pp1_stage0;
    static const sc_lv<5> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<6> ap_const_lv6_31;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_4;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_11001_ignoreCallOp105();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state10_io();
    void thread_ap_block_state10_pp1_stage0_iter6();
    void thread_ap_block_state10_pp1_stage0_iter6_ignore_call0();
    void thread_ap_block_state4_pp1_stage0_iter0();
    void thread_ap_block_state4_pp1_stage0_iter0_ignore_call0();
    void thread_ap_block_state5_pp1_stage0_iter1();
    void thread_ap_block_state5_pp1_stage0_iter1_ignore_call0();
    void thread_ap_block_state6_pp1_stage0_iter2();
    void thread_ap_block_state6_pp1_stage0_iter2_ignore_call0();
    void thread_ap_block_state7_pp1_stage0_iter3();
    void thread_ap_block_state7_pp1_stage0_iter3_ignore_call0();
    void thread_ap_block_state8_pp1_stage0_iter4();
    void thread_ap_block_state8_pp1_stage0_iter4_ignore_call0();
    void thread_ap_block_state9_io();
    void thread_ap_block_state9_pp1_stage0_iter5();
    void thread_ap_block_state9_pp1_stage0_iter5_ignore_call0();
    void thread_ap_condition_pp1_exit_iter1_state5();
    void thread_ap_done();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp1();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_exitcond1_fu_352_p2();
    void thread_exitcond_flatten8_fu_340_p2();
    void thread_exitcond_flatten_fu_284_p2();
    void thread_exitcond_fu_296_p2();
    void thread_grp_convolve_fu_252_ap_ce();
    void thread_i_s_fu_310_p2();
    void thread_i_t_mid2_v_fu_316_p3();
    void thread_in_stream_V_0_ack_in();
    void thread_in_stream_V_0_ack_out();
    void thread_in_stream_V_0_data_out();
    void thread_in_stream_V_0_load_A();
    void thread_in_stream_V_0_load_B();
    void thread_in_stream_V_0_sel();
    void thread_in_stream_V_0_state_cmp_full();
    void thread_in_stream_V_0_vld_in();
    void thread_in_stream_V_0_vld_out();
    void thread_in_stream_V_TDATA_blk_n();
    void thread_in_stream_V_TREADY();
    void thread_indvar_flatten_next7_fu_346_p2();
    void thread_indvar_flatten_next_fu_290_p2();
    void thread_j_1_fu_334_p2();
    void thread_j_mid2_fu_302_p3();
    void thread_line_buf_0_address0();
    void thread_line_buf_0_ce0();
    void thread_line_buf_0_ce1();
    void thread_line_buf_0_we0();
    void thread_line_buf_0_we1();
    void thread_line_buf_1_address0();
    void thread_line_buf_1_ce0();
    void thread_line_buf_1_ce1();
    void thread_line_buf_1_we0();
    void thread_line_buf_1_we1();
    void thread_or_cond_fu_412_p2();
    void thread_out_stream_V_1_ack_in();
    void thread_out_stream_V_1_ack_out();
    void thread_out_stream_V_1_data_out();
    void thread_out_stream_V_1_load_A();
    void thread_out_stream_V_1_load_B();
    void thread_out_stream_V_1_sel();
    void thread_out_stream_V_1_state_cmp_full();
    void thread_out_stream_V_1_vld_in();
    void thread_out_stream_V_1_vld_out();
    void thread_out_stream_V_TDATA();
    void thread_out_stream_V_TDATA_blk_n();
    void thread_out_stream_V_TVALID();
    void thread_tmp_1_mid1_fu_372_p2();
    void thread_tmp_1_mid2_fu_384_p3();
    void thread_tmp_3_fu_328_p1();
    void thread_tmp_7_fu_406_p2();
    void thread_tmp_8_fu_400_p1();
    void thread_tmp_fu_324_p1();
    void thread_tmp_s_fu_378_p2();
    void thread_x_assign_mid2_fu_358_p3();
    void thread_x_fu_418_p2();
    void thread_y_assign_mid2_fu_392_p3();
    void thread_y_fu_366_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
