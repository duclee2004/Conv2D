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

#include "convolve_2d_line_bkb.h"

namespace ap_rtl {

struct convolve_2d : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > out_stream_V_din;
    sc_in< sc_logic > out_stream_V_full_n;
    sc_out< sc_logic > out_stream_V_write;
    sc_in< sc_lv<32> > in_stream_V_dout;
    sc_in< sc_logic > in_stream_V_empty_n;
    sc_out< sc_logic > in_stream_V_read;
    sc_out< sc_lv<4> > kernel_address0;
    sc_out< sc_logic > kernel_ce0;
    sc_in< sc_lv<32> > kernel_q0;
    sc_out< sc_lv<4> > kernel_address1;
    sc_out< sc_logic > kernel_ce1;
    sc_in< sc_lv<32> > kernel_q1;


    // Module declarations
    convolve_2d(sc_module_name name);
    SC_HAS_PROCESS(convolve_2d);

    ~convolve_2d();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    convolve_2d_line_bkb* line_buf_U;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > out_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<1> > or_cond_reg_741;
    sc_signal< sc_lv<1> > or_cond_reg_741_pp0_iter1_reg;
    sc_signal< sc_logic > in_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_710;
    sc_signal< sc_lv<6> > indvar_flatten_reg_269;
    sc_signal< sc_lv<3> > y_assign_reg_280;
    sc_signal< sc_lv<3> > x_assign_reg_291;
    sc_signal< sc_lv<32> > reg_311;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state10_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state6_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state11_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< bool > ap_block_state7_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state12_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state8_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > reg_315;
    sc_signal< sc_lv<1> > exitcond1_fu_319_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > i_1_fu_325_p2;
    sc_signal< sc_lv<2> > i_1_reg_641;
    sc_signal< sc_lv<5> > tmp_9_fu_343_p2;
    sc_signal< sc_lv<5> > tmp_9_reg_646;
    sc_signal< sc_lv<3> > j_1_fu_355_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > window_0_0_load_reg_695;
    sc_signal< sc_lv<32> > window_2_0_load_reg_700;
    sc_signal< sc_lv<32> > window_1_0_load_reg_705;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_384_p2;
    sc_signal< sc_lv<6> > indvar_flatten_next_fu_390_p2;
    sc_signal< sc_lv<6> > indvar_flatten_next_reg_714;
    sc_signal< sc_lv<3> > x_assign_mid2_fu_423_p3;
    sc_signal< sc_lv<3> > x_assign_mid2_reg_719;
    sc_signal< sc_lv<3> > y_assign_mid2_fu_451_p3;
    sc_signal< sc_lv<3> > y_assign_mid2_reg_724;
    sc_signal< sc_lv<4> > line_buf_addr_1_reg_729;
    sc_signal< sc_lv<4> > line_buf_addr_2_reg_735;
    sc_signal< sc_lv<1> > or_cond_fu_485_p2;
    sc_signal< sc_lv<32> > tmp_reg_745;
    sc_signal< sc_lv<32> > line_buf_q0;
    sc_signal< sc_lv<32> > window_0_2_reg_751;
    sc_signal< sc_lv<32> > line_buf_q1;
    sc_signal< sc_lv<32> > window_1_2_reg_757;
    sc_signal< sc_lv<32> > tmp_17_0_i_fu_495_p2;
    sc_signal< sc_lv<32> > tmp_17_0_i_reg_763;
    sc_signal< sc_lv<32> > tmp_17_0_1_i_fu_500_p2;
    sc_signal< sc_lv<32> > tmp_17_0_1_i_reg_768;
    sc_signal< sc_lv<32> > tmp_17_0_2_i_fu_506_p2;
    sc_signal< sc_lv<32> > tmp_17_0_2_i_reg_773;
    sc_signal< sc_lv<32> > tmp_17_1_i_fu_511_p2;
    sc_signal< sc_lv<32> > tmp_17_1_i_reg_778;
    sc_signal< sc_lv<32> > tmp2_fu_516_p2;
    sc_signal< sc_lv<32> > tmp2_reg_783;
    sc_signal< sc_lv<32> > window_2_1_load_1_reg_788;
    sc_signal< sc_lv<32> > tmp_17_1_1_i_fu_528_p2;
    sc_signal< sc_lv<32> > tmp_17_1_1_i_reg_793;
    sc_signal< sc_lv<32> > tmp_17_1_2_i_fu_534_p2;
    sc_signal< sc_lv<32> > tmp_17_1_2_i_reg_798;
    sc_signal< sc_lv<32> > tmp3_fu_539_p2;
    sc_signal< sc_lv<32> > tmp3_reg_803;
    sc_signal< sc_lv<3> > x_fu_543_p2;
    sc_signal< sc_lv<3> > x_reg_808;
    sc_signal< sc_lv<32> > tmp_17_2_i_fu_548_p2;
    sc_signal< sc_lv<32> > tmp_17_2_i_reg_813;
    sc_signal< sc_lv<32> > tmp_17_2_1_i_fu_553_p2;
    sc_signal< sc_lv<32> > tmp_17_2_1_i_reg_818;
    sc_signal< sc_lv<32> > tmp_17_2_2_i_fu_558_p2;
    sc_signal< sc_lv<32> > tmp_17_2_2_i_reg_823;
    sc_signal< sc_lv<32> > tmp4_fu_576_p2;
    sc_signal< sc_lv<32> > tmp4_reg_828;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< sc_lv<4> > line_buf_address0;
    sc_signal< sc_logic > line_buf_ce0;
    sc_signal< sc_logic > line_buf_we0;
    sc_signal< sc_lv<32> > line_buf_d0;
    sc_signal< sc_lv<4> > line_buf_address1;
    sc_signal< sc_logic > line_buf_ce1;
    sc_signal< sc_logic > line_buf_we1;
    sc_signal< sc_lv<2> > i_reg_247;
    sc_signal< sc_lv<1> > exitcond9_fu_349_p2;
    sc_signal< sc_lv<3> > j_reg_258;
    sc_signal< sc_lv<6> > ap_phi_mux_indvar_flatten_phi_fu_273_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<3> > ap_phi_mux_y_assign_phi_fu_284_p4;
    sc_signal< sc_lv<3> > ap_phi_mux_x_assign_phi_fu_295_p4;
    sc_signal< sc_lv<64> > tmp_11_cast_fu_370_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_459_p1;
    sc_signal< sc_lv<64> > tmp_10_cast_fu_474_p1;
    sc_signal< bool > ap_block_pp0_stage3_01001;
    sc_signal< sc_lv<32> > window_2_1_fu_96;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_lv<32> > window_0_0_fu_100;
    sc_signal< sc_lv<32> > window_0_1_fu_104;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<32> > window_2_0_fu_108;
    sc_signal< sc_lv<32> > window_1_0_fu_112;
    sc_signal< sc_lv<32> > window_1_1_fu_116;
    sc_signal< sc_lv<5> > tmp_6_fu_335_p3;
    sc_signal< sc_lv<5> > tmp_cast_fu_331_p1;
    sc_signal< sc_lv<5> > tmp_3_cast_fu_361_p1;
    sc_signal< sc_lv<5> > tmp_2_fu_365_p2;
    sc_signal< sc_lv<1> > exitcond_fu_417_p2;
    sc_signal< sc_lv<3> > y_fu_411_p2;
    sc_signal< sc_lv<1> > tmp_1_mid1_fu_431_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_437_p2;
    sc_signal< sc_lv<4> > tmp_8_cast_fu_464_p1;
    sc_signal< sc_lv<4> > tmp_1_fu_468_p2;
    sc_signal< sc_lv<1> > tmp_1_mid2_fu_443_p3;
    sc_signal< sc_lv<1> > tmp_7_fu_479_p2;
    sc_signal< sc_lv<32> > tmp_17_0_1_i_fu_500_p1;
    sc_signal< sc_lv<32> > tmp_17_1_1_i_fu_528_p1;
    sc_signal< sc_lv<32> > tmp7_fu_567_p2;
    sc_signal< sc_lv<32> > tmp6_fu_571_p2;
    sc_signal< sc_lv<32> > tmp5_fu_563_p2;
    sc_signal< sc_lv<32> > tmp1_fu_582_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_pp0_stage0;
    static const sc_lv<9> ap_ST_fsm_pp0_stage1;
    static const sc_lv<9> ap_ST_fsm_pp0_stage2;
    static const sc_lv<9> ap_ST_fsm_pp0_stage3;
    static const sc_lv<9> ap_ST_fsm_pp0_stage4;
    static const sc_lv<9> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<6> ap_const_lv6_31;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<32> ap_const_lv32_8;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_01001();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_state10_pp0_stage1_iter1();
    void thread_ap_block_state11_pp0_stage2_iter1();
    void thread_ap_block_state12_pp0_stage3_iter1();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage1_iter0();
    void thread_ap_block_state6_pp0_stage2_iter0();
    void thread_ap_block_state7_pp0_stage3_iter0();
    void thread_ap_block_state8_pp0_stage4_iter0();
    void thread_ap_block_state9_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_273_p4();
    void thread_ap_phi_mux_x_assign_phi_fu_295_p4();
    void thread_ap_phi_mux_y_assign_phi_fu_284_p4();
    void thread_ap_ready();
    void thread_exitcond1_fu_319_p2();
    void thread_exitcond9_fu_349_p2();
    void thread_exitcond_flatten_fu_384_p2();
    void thread_exitcond_fu_417_p2();
    void thread_i_1_fu_325_p2();
    void thread_in_stream_V_blk_n();
    void thread_in_stream_V_read();
    void thread_indvar_flatten_next_fu_390_p2();
    void thread_j_1_fu_355_p2();
    void thread_kernel_address0();
    void thread_kernel_address1();
    void thread_kernel_ce0();
    void thread_kernel_ce1();
    void thread_line_buf_address0();
    void thread_line_buf_address1();
    void thread_line_buf_ce0();
    void thread_line_buf_ce1();
    void thread_line_buf_d0();
    void thread_line_buf_we0();
    void thread_line_buf_we1();
    void thread_or_cond_fu_485_p2();
    void thread_out_stream_V_blk_n();
    void thread_out_stream_V_din();
    void thread_out_stream_V_write();
    void thread_tmp1_fu_582_p2();
    void thread_tmp2_fu_516_p2();
    void thread_tmp3_fu_539_p2();
    void thread_tmp4_fu_576_p2();
    void thread_tmp5_fu_563_p2();
    void thread_tmp6_fu_571_p2();
    void thread_tmp7_fu_567_p2();
    void thread_tmp_10_cast_fu_474_p1();
    void thread_tmp_11_cast_fu_370_p1();
    void thread_tmp_17_0_1_i_fu_500_p1();
    void thread_tmp_17_0_1_i_fu_500_p2();
    void thread_tmp_17_0_2_i_fu_506_p2();
    void thread_tmp_17_0_i_fu_495_p2();
    void thread_tmp_17_1_1_i_fu_528_p1();
    void thread_tmp_17_1_1_i_fu_528_p2();
    void thread_tmp_17_1_2_i_fu_534_p2();
    void thread_tmp_17_1_i_fu_511_p2();
    void thread_tmp_17_2_1_i_fu_553_p2();
    void thread_tmp_17_2_2_i_fu_558_p2();
    void thread_tmp_17_2_i_fu_548_p2();
    void thread_tmp_1_fu_468_p2();
    void thread_tmp_1_mid1_fu_431_p2();
    void thread_tmp_1_mid2_fu_443_p3();
    void thread_tmp_2_fu_365_p2();
    void thread_tmp_3_cast_fu_361_p1();
    void thread_tmp_6_fu_335_p3();
    void thread_tmp_7_fu_479_p2();
    void thread_tmp_8_cast_fu_464_p1();
    void thread_tmp_8_fu_459_p1();
    void thread_tmp_9_fu_343_p2();
    void thread_tmp_cast_fu_331_p1();
    void thread_tmp_s_fu_437_p2();
    void thread_x_assign_mid2_fu_423_p3();
    void thread_x_fu_543_p2();
    void thread_y_assign_mid2_fu_451_p3();
    void thread_y_fu_411_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
