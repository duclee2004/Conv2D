// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _convolve_HH_
#define _convolve_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct convolve : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > window_0_0_read;
    sc_in< sc_lv<32> > window_0_1_read;
    sc_in< sc_lv<32> > window_0_2_read;
    sc_in< sc_lv<32> > window_1_0_read;
    sc_in< sc_lv<32> > window_1_1_read;
    sc_in< sc_lv<32> > window_1_2_read;
    sc_in< sc_lv<32> > window_2_0_read;
    sc_in< sc_lv<32> > window_2_1_read;
    sc_in< sc_lv<32> > window_2_2_read;
    sc_in< sc_lv<32> > kernel_0_0;
    sc_in< sc_lv<32> > kernel_0_1;
    sc_in< sc_lv<32> > kernel_0_2;
    sc_in< sc_lv<32> > kernel_1_0;
    sc_in< sc_lv<32> > kernel_1_1;
    sc_in< sc_lv<32> > kernel_1_2;
    sc_in< sc_lv<32> > kernel_2_0;
    sc_in< sc_lv<32> > kernel_2_1;
    sc_in< sc_lv<32> > kernel_2_2;
    sc_out< sc_lv<32> > ap_return;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    convolve(sc_module_name name);
    SC_HAS_PROCESS(convolve);

    ~convolve();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<32> > tmp_s_fu_156_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_246;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > tmp_17_0_1_fu_162_p2;
    sc_signal< sc_lv<32> > tmp_17_0_1_reg_251;
    sc_signal< sc_lv<32> > tmp_17_0_2_fu_168_p2;
    sc_signal< sc_lv<32> > tmp_17_0_2_reg_256;
    sc_signal< sc_lv<32> > tmp_17_1_fu_174_p2;
    sc_signal< sc_lv<32> > tmp_17_1_reg_261;
    sc_signal< sc_lv<32> > tmp_17_1_1_fu_180_p2;
    sc_signal< sc_lv<32> > tmp_17_1_1_reg_266;
    sc_signal< sc_lv<32> > tmp_17_1_2_fu_186_p2;
    sc_signal< sc_lv<32> > tmp_17_1_2_reg_271;
    sc_signal< sc_lv<32> > tmp_17_2_fu_192_p2;
    sc_signal< sc_lv<32> > tmp_17_2_reg_276;
    sc_signal< sc_lv<32> > tmp_17_2_1_fu_198_p2;
    sc_signal< sc_lv<32> > tmp_17_2_1_reg_281;
    sc_signal< sc_lv<32> > tmp_17_2_2_fu_204_p2;
    sc_signal< sc_lv<32> > tmp_17_2_2_reg_286;
    sc_signal< sc_lv<32> > tmp1_fu_210_p2;
    sc_signal< sc_lv<32> > tmp1_reg_291;
    sc_signal< sc_lv<32> > tmp2_fu_214_p2;
    sc_signal< sc_lv<32> > tmp2_reg_296;
    sc_signal< sc_lv<32> > tmp3_fu_231_p2;
    sc_signal< sc_lv<32> > tmp3_reg_301;
    sc_signal< sc_lv<32> > tmp_s_fu_156_p0;
    sc_signal< sc_lv<32> > tmp_s_fu_156_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > tmp_17_0_1_fu_162_p0;
    sc_signal< sc_lv<32> > tmp_17_0_1_fu_162_p1;
    sc_signal< sc_lv<32> > tmp_17_0_2_fu_168_p0;
    sc_signal< sc_lv<32> > tmp_17_0_2_fu_168_p1;
    sc_signal< sc_lv<32> > tmp_17_1_fu_174_p0;
    sc_signal< sc_lv<32> > tmp_17_1_fu_174_p1;
    sc_signal< sc_lv<32> > tmp_17_1_1_fu_180_p0;
    sc_signal< sc_lv<32> > tmp_17_1_1_fu_180_p1;
    sc_signal< sc_lv<32> > tmp_17_1_2_fu_186_p0;
    sc_signal< sc_lv<32> > tmp_17_1_2_fu_186_p1;
    sc_signal< sc_lv<32> > tmp_17_2_fu_192_p0;
    sc_signal< sc_lv<32> > tmp_17_2_fu_192_p1;
    sc_signal< sc_lv<32> > tmp_17_2_1_fu_198_p0;
    sc_signal< sc_lv<32> > tmp_17_2_1_fu_198_p1;
    sc_signal< sc_lv<32> > tmp_17_2_2_fu_204_p0;
    sc_signal< sc_lv<32> > tmp_17_2_2_fu_204_p1;
    sc_signal< sc_lv<32> > tmp6_fu_222_p2;
    sc_signal< sc_lv<32> > tmp5_fu_226_p2;
    sc_signal< sc_lv<32> > tmp4_fu_218_p2;
    sc_signal< sc_lv<32> > tmp_fu_237_p2;
    sc_signal< sc_lv<32> > result_2_2_2_fu_241_p2;
    sc_signal< sc_logic > ap_ce_reg;
    sc_signal< sc_lv<32> > window_0_0_read_int_reg;
    sc_signal< sc_lv<32> > window_0_1_read_int_reg;
    sc_signal< sc_lv<32> > window_0_2_read_int_reg;
    sc_signal< sc_lv<32> > window_1_0_read_int_reg;
    sc_signal< sc_lv<32> > window_1_1_read_int_reg;
    sc_signal< sc_lv<32> > window_1_2_read_int_reg;
    sc_signal< sc_lv<32> > window_2_0_read_int_reg;
    sc_signal< sc_lv<32> > window_2_1_read_int_reg;
    sc_signal< sc_lv<32> > window_2_2_read_int_reg;
    sc_signal< sc_lv<32> > kernel_0_0_int_reg;
    sc_signal< sc_lv<32> > kernel_0_1_int_reg;
    sc_signal< sc_lv<32> > kernel_0_2_int_reg;
    sc_signal< sc_lv<32> > kernel_1_0_int_reg;
    sc_signal< sc_lv<32> > kernel_1_1_int_reg;
    sc_signal< sc_lv<32> > kernel_1_2_int_reg;
    sc_signal< sc_lv<32> > kernel_2_0_int_reg;
    sc_signal< sc_lv<32> > kernel_2_1_int_reg;
    sc_signal< sc_lv<32> > kernel_2_2_int_reg;
    sc_signal< sc_lv<32> > ap_return_int_reg;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_return();
    void thread_result_2_2_2_fu_241_p2();
    void thread_tmp1_fu_210_p2();
    void thread_tmp2_fu_214_p2();
    void thread_tmp3_fu_231_p2();
    void thread_tmp4_fu_218_p2();
    void thread_tmp5_fu_226_p2();
    void thread_tmp6_fu_222_p2();
    void thread_tmp_17_0_1_fu_162_p0();
    void thread_tmp_17_0_1_fu_162_p1();
    void thread_tmp_17_0_1_fu_162_p2();
    void thread_tmp_17_0_2_fu_168_p0();
    void thread_tmp_17_0_2_fu_168_p1();
    void thread_tmp_17_0_2_fu_168_p2();
    void thread_tmp_17_1_1_fu_180_p0();
    void thread_tmp_17_1_1_fu_180_p1();
    void thread_tmp_17_1_1_fu_180_p2();
    void thread_tmp_17_1_2_fu_186_p0();
    void thread_tmp_17_1_2_fu_186_p1();
    void thread_tmp_17_1_2_fu_186_p2();
    void thread_tmp_17_1_fu_174_p0();
    void thread_tmp_17_1_fu_174_p1();
    void thread_tmp_17_1_fu_174_p2();
    void thread_tmp_17_2_1_fu_198_p0();
    void thread_tmp_17_2_1_fu_198_p1();
    void thread_tmp_17_2_1_fu_198_p2();
    void thread_tmp_17_2_2_fu_204_p0();
    void thread_tmp_17_2_2_fu_204_p1();
    void thread_tmp_17_2_2_fu_204_p2();
    void thread_tmp_17_2_fu_192_p0();
    void thread_tmp_17_2_fu_192_p1();
    void thread_tmp_17_2_fu_192_p2();
    void thread_tmp_fu_237_p2();
    void thread_tmp_s_fu_156_p0();
    void thread_tmp_s_fu_156_p1();
    void thread_tmp_s_fu_156_p2();
};

}

using namespace ap_rtl;

#endif
