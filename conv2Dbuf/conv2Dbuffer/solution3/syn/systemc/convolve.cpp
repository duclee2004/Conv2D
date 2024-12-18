// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "convolve.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic convolve::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic convolve::ap_const_logic_0 = sc_dt::Log_0;
const bool convolve::ap_const_boolean_1 = true;
const bool convolve::ap_const_boolean_0 = false;

convolve::convolve(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter2);

    SC_METHOD(thread_ap_return);
    sensitive << ( result_2_2_2_fu_241_p2 );
    sensitive << ( ap_ce_reg );
    sensitive << ( ap_return_int_reg );

    SC_METHOD(thread_result_2_2_2_fu_241_p2);
    sensitive << ( tmp3_reg_301 );
    sensitive << ( tmp_fu_237_p2 );

    SC_METHOD(thread_tmp1_fu_210_p2);
    sensitive << ( tmp_s_reg_246 );
    sensitive << ( tmp_17_0_1_reg_251 );

    SC_METHOD(thread_tmp2_fu_214_p2);
    sensitive << ( tmp_17_0_2_reg_256 );
    sensitive << ( tmp_17_1_reg_261 );

    SC_METHOD(thread_tmp3_fu_231_p2);
    sensitive << ( tmp5_fu_226_p2 );
    sensitive << ( tmp4_fu_218_p2 );

    SC_METHOD(thread_tmp4_fu_218_p2);
    sensitive << ( tmp_17_1_1_reg_266 );
    sensitive << ( tmp_17_1_2_reg_271 );

    SC_METHOD(thread_tmp5_fu_226_p2);
    sensitive << ( tmp_17_2_reg_276 );
    sensitive << ( tmp6_fu_222_p2 );

    SC_METHOD(thread_tmp6_fu_222_p2);
    sensitive << ( tmp_17_2_1_reg_281 );
    sensitive << ( tmp_17_2_2_reg_286 );

    SC_METHOD(thread_tmp_17_0_1_fu_162_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_0_1_int_reg );

    SC_METHOD(thread_tmp_17_0_1_fu_162_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_0_1_read_int_reg );

    SC_METHOD(thread_tmp_17_0_1_fu_162_p2);
    sensitive << ( tmp_17_0_1_fu_162_p0 );
    sensitive << ( tmp_17_0_1_fu_162_p1 );

    SC_METHOD(thread_tmp_17_0_2_fu_168_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_0_2_int_reg );

    SC_METHOD(thread_tmp_17_0_2_fu_168_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_0_2_read_int_reg );

    SC_METHOD(thread_tmp_17_0_2_fu_168_p2);
    sensitive << ( tmp_17_0_2_fu_168_p0 );
    sensitive << ( tmp_17_0_2_fu_168_p1 );

    SC_METHOD(thread_tmp_17_1_1_fu_180_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_1_1_int_reg );

    SC_METHOD(thread_tmp_17_1_1_fu_180_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_1_1_read_int_reg );

    SC_METHOD(thread_tmp_17_1_1_fu_180_p2);
    sensitive << ( tmp_17_1_1_fu_180_p0 );
    sensitive << ( tmp_17_1_1_fu_180_p1 );

    SC_METHOD(thread_tmp_17_1_2_fu_186_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_1_2_int_reg );

    SC_METHOD(thread_tmp_17_1_2_fu_186_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_1_2_read_int_reg );

    SC_METHOD(thread_tmp_17_1_2_fu_186_p2);
    sensitive << ( tmp_17_1_2_fu_186_p0 );
    sensitive << ( tmp_17_1_2_fu_186_p1 );

    SC_METHOD(thread_tmp_17_1_fu_174_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_1_0_int_reg );

    SC_METHOD(thread_tmp_17_1_fu_174_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_1_0_read_int_reg );

    SC_METHOD(thread_tmp_17_1_fu_174_p2);
    sensitive << ( tmp_17_1_fu_174_p0 );
    sensitive << ( tmp_17_1_fu_174_p1 );

    SC_METHOD(thread_tmp_17_2_1_fu_198_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_2_1_int_reg );

    SC_METHOD(thread_tmp_17_2_1_fu_198_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_2_1_read_int_reg );

    SC_METHOD(thread_tmp_17_2_1_fu_198_p2);
    sensitive << ( tmp_17_2_1_fu_198_p0 );
    sensitive << ( tmp_17_2_1_fu_198_p1 );

    SC_METHOD(thread_tmp_17_2_2_fu_204_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_2_2_int_reg );

    SC_METHOD(thread_tmp_17_2_2_fu_204_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_2_2_read_int_reg );

    SC_METHOD(thread_tmp_17_2_2_fu_204_p2);
    sensitive << ( tmp_17_2_2_fu_204_p0 );
    sensitive << ( tmp_17_2_2_fu_204_p1 );

    SC_METHOD(thread_tmp_17_2_fu_192_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_2_0_int_reg );

    SC_METHOD(thread_tmp_17_2_fu_192_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_2_0_read_int_reg );

    SC_METHOD(thread_tmp_17_2_fu_192_p2);
    sensitive << ( tmp_17_2_fu_192_p0 );
    sensitive << ( tmp_17_2_fu_192_p1 );

    SC_METHOD(thread_tmp_fu_237_p2);
    sensitive << ( tmp1_reg_291 );
    sensitive << ( tmp2_reg_296 );

    SC_METHOD(thread_tmp_s_fu_156_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( kernel_0_0_int_reg );

    SC_METHOD(thread_tmp_s_fu_156_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( window_0_0_read_int_reg );

    SC_METHOD(thread_tmp_s_fu_156_p2);
    sensitive << ( tmp_s_fu_156_p0 );
    sensitive << ( tmp_s_fu_156_p1 );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "convolve_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, window_0_0_read, "(port)window_0_0_read");
    sc_trace(mVcdFile, window_0_1_read, "(port)window_0_1_read");
    sc_trace(mVcdFile, window_0_2_read, "(port)window_0_2_read");
    sc_trace(mVcdFile, window_1_0_read, "(port)window_1_0_read");
    sc_trace(mVcdFile, window_1_1_read, "(port)window_1_1_read");
    sc_trace(mVcdFile, window_1_2_read, "(port)window_1_2_read");
    sc_trace(mVcdFile, window_2_0_read, "(port)window_2_0_read");
    sc_trace(mVcdFile, window_2_1_read, "(port)window_2_1_read");
    sc_trace(mVcdFile, window_2_2_read, "(port)window_2_2_read");
    sc_trace(mVcdFile, kernel_0_0, "(port)kernel_0_0");
    sc_trace(mVcdFile, kernel_0_1, "(port)kernel_0_1");
    sc_trace(mVcdFile, kernel_0_2, "(port)kernel_0_2");
    sc_trace(mVcdFile, kernel_1_0, "(port)kernel_1_0");
    sc_trace(mVcdFile, kernel_1_1, "(port)kernel_1_1");
    sc_trace(mVcdFile, kernel_1_2, "(port)kernel_1_2");
    sc_trace(mVcdFile, kernel_2_0, "(port)kernel_2_0");
    sc_trace(mVcdFile, kernel_2_1, "(port)kernel_2_1");
    sc_trace(mVcdFile, kernel_2_2, "(port)kernel_2_2");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
    sc_trace(mVcdFile, ap_ce, "(port)ap_ce");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, tmp_s_fu_156_p2, "tmp_s_fu_156_p2");
    sc_trace(mVcdFile, tmp_s_reg_246, "tmp_s_reg_246");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter1, "ap_block_state2_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter2, "ap_block_state3_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, tmp_17_0_1_fu_162_p2, "tmp_17_0_1_fu_162_p2");
    sc_trace(mVcdFile, tmp_17_0_1_reg_251, "tmp_17_0_1_reg_251");
    sc_trace(mVcdFile, tmp_17_0_2_fu_168_p2, "tmp_17_0_2_fu_168_p2");
    sc_trace(mVcdFile, tmp_17_0_2_reg_256, "tmp_17_0_2_reg_256");
    sc_trace(mVcdFile, tmp_17_1_fu_174_p2, "tmp_17_1_fu_174_p2");
    sc_trace(mVcdFile, tmp_17_1_reg_261, "tmp_17_1_reg_261");
    sc_trace(mVcdFile, tmp_17_1_1_fu_180_p2, "tmp_17_1_1_fu_180_p2");
    sc_trace(mVcdFile, tmp_17_1_1_reg_266, "tmp_17_1_1_reg_266");
    sc_trace(mVcdFile, tmp_17_1_2_fu_186_p2, "tmp_17_1_2_fu_186_p2");
    sc_trace(mVcdFile, tmp_17_1_2_reg_271, "tmp_17_1_2_reg_271");
    sc_trace(mVcdFile, tmp_17_2_fu_192_p2, "tmp_17_2_fu_192_p2");
    sc_trace(mVcdFile, tmp_17_2_reg_276, "tmp_17_2_reg_276");
    sc_trace(mVcdFile, tmp_17_2_1_fu_198_p2, "tmp_17_2_1_fu_198_p2");
    sc_trace(mVcdFile, tmp_17_2_1_reg_281, "tmp_17_2_1_reg_281");
    sc_trace(mVcdFile, tmp_17_2_2_fu_204_p2, "tmp_17_2_2_fu_204_p2");
    sc_trace(mVcdFile, tmp_17_2_2_reg_286, "tmp_17_2_2_reg_286");
    sc_trace(mVcdFile, tmp1_fu_210_p2, "tmp1_fu_210_p2");
    sc_trace(mVcdFile, tmp1_reg_291, "tmp1_reg_291");
    sc_trace(mVcdFile, tmp2_fu_214_p2, "tmp2_fu_214_p2");
    sc_trace(mVcdFile, tmp2_reg_296, "tmp2_reg_296");
    sc_trace(mVcdFile, tmp3_fu_231_p2, "tmp3_fu_231_p2");
    sc_trace(mVcdFile, tmp3_reg_301, "tmp3_reg_301");
    sc_trace(mVcdFile, tmp_s_fu_156_p0, "tmp_s_fu_156_p0");
    sc_trace(mVcdFile, tmp_s_fu_156_p1, "tmp_s_fu_156_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, tmp_17_0_1_fu_162_p0, "tmp_17_0_1_fu_162_p0");
    sc_trace(mVcdFile, tmp_17_0_1_fu_162_p1, "tmp_17_0_1_fu_162_p1");
    sc_trace(mVcdFile, tmp_17_0_2_fu_168_p0, "tmp_17_0_2_fu_168_p0");
    sc_trace(mVcdFile, tmp_17_0_2_fu_168_p1, "tmp_17_0_2_fu_168_p1");
    sc_trace(mVcdFile, tmp_17_1_fu_174_p0, "tmp_17_1_fu_174_p0");
    sc_trace(mVcdFile, tmp_17_1_fu_174_p1, "tmp_17_1_fu_174_p1");
    sc_trace(mVcdFile, tmp_17_1_1_fu_180_p0, "tmp_17_1_1_fu_180_p0");
    sc_trace(mVcdFile, tmp_17_1_1_fu_180_p1, "tmp_17_1_1_fu_180_p1");
    sc_trace(mVcdFile, tmp_17_1_2_fu_186_p0, "tmp_17_1_2_fu_186_p0");
    sc_trace(mVcdFile, tmp_17_1_2_fu_186_p1, "tmp_17_1_2_fu_186_p1");
    sc_trace(mVcdFile, tmp_17_2_fu_192_p0, "tmp_17_2_fu_192_p0");
    sc_trace(mVcdFile, tmp_17_2_fu_192_p1, "tmp_17_2_fu_192_p1");
    sc_trace(mVcdFile, tmp_17_2_1_fu_198_p0, "tmp_17_2_1_fu_198_p0");
    sc_trace(mVcdFile, tmp_17_2_1_fu_198_p1, "tmp_17_2_1_fu_198_p1");
    sc_trace(mVcdFile, tmp_17_2_2_fu_204_p0, "tmp_17_2_2_fu_204_p0");
    sc_trace(mVcdFile, tmp_17_2_2_fu_204_p1, "tmp_17_2_2_fu_204_p1");
    sc_trace(mVcdFile, tmp6_fu_222_p2, "tmp6_fu_222_p2");
    sc_trace(mVcdFile, tmp5_fu_226_p2, "tmp5_fu_226_p2");
    sc_trace(mVcdFile, tmp4_fu_218_p2, "tmp4_fu_218_p2");
    sc_trace(mVcdFile, tmp_fu_237_p2, "tmp_fu_237_p2");
    sc_trace(mVcdFile, result_2_2_2_fu_241_p2, "result_2_2_2_fu_241_p2");
    sc_trace(mVcdFile, ap_ce_reg, "ap_ce_reg");
    sc_trace(mVcdFile, window_0_0_read_int_reg, "window_0_0_read_int_reg");
    sc_trace(mVcdFile, window_0_1_read_int_reg, "window_0_1_read_int_reg");
    sc_trace(mVcdFile, window_0_2_read_int_reg, "window_0_2_read_int_reg");
    sc_trace(mVcdFile, window_1_0_read_int_reg, "window_1_0_read_int_reg");
    sc_trace(mVcdFile, window_1_1_read_int_reg, "window_1_1_read_int_reg");
    sc_trace(mVcdFile, window_1_2_read_int_reg, "window_1_2_read_int_reg");
    sc_trace(mVcdFile, window_2_0_read_int_reg, "window_2_0_read_int_reg");
    sc_trace(mVcdFile, window_2_1_read_int_reg, "window_2_1_read_int_reg");
    sc_trace(mVcdFile, window_2_2_read_int_reg, "window_2_2_read_int_reg");
    sc_trace(mVcdFile, kernel_0_0_int_reg, "kernel_0_0_int_reg");
    sc_trace(mVcdFile, kernel_0_1_int_reg, "kernel_0_1_int_reg");
    sc_trace(mVcdFile, kernel_0_2_int_reg, "kernel_0_2_int_reg");
    sc_trace(mVcdFile, kernel_1_0_int_reg, "kernel_1_0_int_reg");
    sc_trace(mVcdFile, kernel_1_1_int_reg, "kernel_1_1_int_reg");
    sc_trace(mVcdFile, kernel_1_2_int_reg, "kernel_1_2_int_reg");
    sc_trace(mVcdFile, kernel_2_0_int_reg, "kernel_2_0_int_reg");
    sc_trace(mVcdFile, kernel_2_1_int_reg, "kernel_2_1_int_reg");
    sc_trace(mVcdFile, kernel_2_2_int_reg, "kernel_2_2_int_reg");
    sc_trace(mVcdFile, ap_return_int_reg, "ap_return_int_reg");
#endif

    }
}

convolve::~convolve() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void convolve::thread_ap_clk_no_reset_() {
    ap_ce_reg = ap_ce.read();
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce_reg.read())) {
        ap_return_int_reg = result_2_2_2_fu_241_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        kernel_0_0_int_reg = kernel_0_0.read();
        kernel_0_1_int_reg = kernel_0_1.read();
        kernel_0_2_int_reg = kernel_0_2.read();
        kernel_1_0_int_reg = kernel_1_0.read();
        kernel_1_1_int_reg = kernel_1_1.read();
        kernel_1_2_int_reg = kernel_1_2.read();
        kernel_2_0_int_reg = kernel_2_0.read();
        kernel_2_1_int_reg = kernel_2_1.read();
        kernel_2_2_int_reg = kernel_2_2.read();
        window_0_0_read_int_reg = window_0_0_read.read();
        window_0_1_read_int_reg = window_0_1_read.read();
        window_0_2_read_int_reg = window_0_2_read.read();
        window_1_0_read_int_reg = window_1_0_read.read();
        window_1_1_read_int_reg = window_1_1_read.read();
        window_1_2_read_int_reg = window_1_2_read.read();
        window_2_0_read_int_reg = window_2_0_read.read();
        window_2_1_read_int_reg = window_2_1_read.read();
        window_2_2_read_int_reg = window_2_2_read.read();
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_ce_reg.read(), ap_const_logic_1))) {
        tmp1_reg_291 = tmp1_fu_210_p2.read();
        tmp2_reg_296 = tmp2_fu_214_p2.read();
        tmp3_reg_301 = tmp3_fu_231_p2.read();
        tmp_17_0_1_reg_251 = tmp_17_0_1_fu_162_p2.read();
        tmp_17_0_2_reg_256 = tmp_17_0_2_fu_168_p2.read();
        tmp_17_1_1_reg_266 = tmp_17_1_1_fu_180_p2.read();
        tmp_17_1_2_reg_271 = tmp_17_1_2_fu_186_p2.read();
        tmp_17_1_reg_261 = tmp_17_1_fu_174_p2.read();
        tmp_17_2_1_reg_281 = tmp_17_2_1_fu_198_p2.read();
        tmp_17_2_2_reg_286 = tmp_17_2_2_fu_204_p2.read();
        tmp_17_2_reg_276 = tmp_17_2_fu_192_p2.read();
        tmp_s_reg_246 = tmp_s_fu_156_p2.read();
    }
}

void convolve::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void convolve::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void convolve::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void convolve::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void convolve::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void convolve::thread_ap_return() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_ce_reg.read())) {
        ap_return = ap_return_int_reg.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce_reg.read())) {
        ap_return = result_2_2_2_fu_241_p2.read();
    }
}

void convolve::thread_result_2_2_2_fu_241_p2() {
    result_2_2_2_fu_241_p2 = (!tmp3_reg_301.read().is_01() || !tmp_fu_237_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp3_reg_301.read()) + sc_biguint<32>(tmp_fu_237_p2.read()));
}

void convolve::thread_tmp1_fu_210_p2() {
    tmp1_fu_210_p2 = (!tmp_s_reg_246.read().is_01() || !tmp_17_0_1_reg_251.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_s_reg_246.read()) + sc_biguint<32>(tmp_17_0_1_reg_251.read()));
}

void convolve::thread_tmp2_fu_214_p2() {
    tmp2_fu_214_p2 = (!tmp_17_0_2_reg_256.read().is_01() || !tmp_17_1_reg_261.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_17_0_2_reg_256.read()) + sc_biguint<32>(tmp_17_1_reg_261.read()));
}

void convolve::thread_tmp3_fu_231_p2() {
    tmp3_fu_231_p2 = (!tmp5_fu_226_p2.read().is_01() || !tmp4_fu_218_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp5_fu_226_p2.read()) + sc_biguint<32>(tmp4_fu_218_p2.read()));
}

void convolve::thread_tmp4_fu_218_p2() {
    tmp4_fu_218_p2 = (!tmp_17_1_1_reg_266.read().is_01() || !tmp_17_1_2_reg_271.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_17_1_1_reg_266.read()) + sc_biguint<32>(tmp_17_1_2_reg_271.read()));
}

void convolve::thread_tmp5_fu_226_p2() {
    tmp5_fu_226_p2 = (!tmp6_fu_222_p2.read().is_01() || !tmp_17_2_reg_276.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp6_fu_222_p2.read()) + sc_biguint<32>(tmp_17_2_reg_276.read()));
}

void convolve::thread_tmp6_fu_222_p2() {
    tmp6_fu_222_p2 = (!tmp_17_2_1_reg_281.read().is_01() || !tmp_17_2_2_reg_286.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_17_2_1_reg_281.read()) + sc_biguint<32>(tmp_17_2_2_reg_286.read()));
}

void convolve::thread_tmp_17_0_1_fu_162_p0() {
    tmp_17_0_1_fu_162_p0 = kernel_0_1_int_reg.read();
}

void convolve::thread_tmp_17_0_1_fu_162_p1() {
    tmp_17_0_1_fu_162_p1 = window_0_1_read_int_reg.read();
}

void convolve::thread_tmp_17_0_1_fu_162_p2() {
    tmp_17_0_1_fu_162_p2 = (!tmp_17_0_1_fu_162_p0.read().is_01() || !tmp_17_0_1_fu_162_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_0_1_fu_162_p0.read()) * sc_bigint<32>(tmp_17_0_1_fu_162_p1.read());
}

void convolve::thread_tmp_17_0_2_fu_168_p0() {
    tmp_17_0_2_fu_168_p0 = kernel_0_2_int_reg.read();
}

void convolve::thread_tmp_17_0_2_fu_168_p1() {
    tmp_17_0_2_fu_168_p1 = window_0_2_read_int_reg.read();
}

void convolve::thread_tmp_17_0_2_fu_168_p2() {
    tmp_17_0_2_fu_168_p2 = (!tmp_17_0_2_fu_168_p0.read().is_01() || !tmp_17_0_2_fu_168_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_0_2_fu_168_p0.read()) * sc_bigint<32>(tmp_17_0_2_fu_168_p1.read());
}

void convolve::thread_tmp_17_1_1_fu_180_p0() {
    tmp_17_1_1_fu_180_p0 = kernel_1_1_int_reg.read();
}

void convolve::thread_tmp_17_1_1_fu_180_p1() {
    tmp_17_1_1_fu_180_p1 = window_1_1_read_int_reg.read();
}

void convolve::thread_tmp_17_1_1_fu_180_p2() {
    tmp_17_1_1_fu_180_p2 = (!tmp_17_1_1_fu_180_p0.read().is_01() || !tmp_17_1_1_fu_180_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_1_1_fu_180_p0.read()) * sc_bigint<32>(tmp_17_1_1_fu_180_p1.read());
}

void convolve::thread_tmp_17_1_2_fu_186_p0() {
    tmp_17_1_2_fu_186_p0 = kernel_1_2_int_reg.read();
}

void convolve::thread_tmp_17_1_2_fu_186_p1() {
    tmp_17_1_2_fu_186_p1 = window_1_2_read_int_reg.read();
}

void convolve::thread_tmp_17_1_2_fu_186_p2() {
    tmp_17_1_2_fu_186_p2 = (!tmp_17_1_2_fu_186_p0.read().is_01() || !tmp_17_1_2_fu_186_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_1_2_fu_186_p0.read()) * sc_bigint<32>(tmp_17_1_2_fu_186_p1.read());
}

void convolve::thread_tmp_17_1_fu_174_p0() {
    tmp_17_1_fu_174_p0 = kernel_1_0_int_reg.read();
}

void convolve::thread_tmp_17_1_fu_174_p1() {
    tmp_17_1_fu_174_p1 = window_1_0_read_int_reg.read();
}

void convolve::thread_tmp_17_1_fu_174_p2() {
    tmp_17_1_fu_174_p2 = (!tmp_17_1_fu_174_p0.read().is_01() || !tmp_17_1_fu_174_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_1_fu_174_p0.read()) * sc_bigint<32>(tmp_17_1_fu_174_p1.read());
}

void convolve::thread_tmp_17_2_1_fu_198_p0() {
    tmp_17_2_1_fu_198_p0 = kernel_2_1_int_reg.read();
}

void convolve::thread_tmp_17_2_1_fu_198_p1() {
    tmp_17_2_1_fu_198_p1 = window_2_1_read_int_reg.read();
}

void convolve::thread_tmp_17_2_1_fu_198_p2() {
    tmp_17_2_1_fu_198_p2 = (!tmp_17_2_1_fu_198_p0.read().is_01() || !tmp_17_2_1_fu_198_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_2_1_fu_198_p0.read()) * sc_bigint<32>(tmp_17_2_1_fu_198_p1.read());
}

void convolve::thread_tmp_17_2_2_fu_204_p0() {
    tmp_17_2_2_fu_204_p0 = kernel_2_2_int_reg.read();
}

void convolve::thread_tmp_17_2_2_fu_204_p1() {
    tmp_17_2_2_fu_204_p1 = window_2_2_read_int_reg.read();
}

void convolve::thread_tmp_17_2_2_fu_204_p2() {
    tmp_17_2_2_fu_204_p2 = (!tmp_17_2_2_fu_204_p0.read().is_01() || !tmp_17_2_2_fu_204_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_2_2_fu_204_p0.read()) * sc_bigint<32>(tmp_17_2_2_fu_204_p1.read());
}

void convolve::thread_tmp_17_2_fu_192_p0() {
    tmp_17_2_fu_192_p0 = kernel_2_0_int_reg.read();
}

void convolve::thread_tmp_17_2_fu_192_p1() {
    tmp_17_2_fu_192_p1 = window_2_0_read_int_reg.read();
}

void convolve::thread_tmp_17_2_fu_192_p2() {
    tmp_17_2_fu_192_p2 = (!tmp_17_2_fu_192_p0.read().is_01() || !tmp_17_2_fu_192_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_17_2_fu_192_p0.read()) * sc_bigint<32>(tmp_17_2_fu_192_p1.read());
}

void convolve::thread_tmp_fu_237_p2() {
    tmp_fu_237_p2 = (!tmp2_reg_296.read().is_01() || !tmp1_reg_291.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp2_reg_296.read()) + sc_biguint<32>(tmp1_reg_291.read()));
}

void convolve::thread_tmp_s_fu_156_p0() {
    tmp_s_fu_156_p0 = kernel_0_0_int_reg.read();
}

void convolve::thread_tmp_s_fu_156_p1() {
    tmp_s_fu_156_p1 = window_0_0_read_int_reg.read();
}

void convolve::thread_tmp_s_fu_156_p2() {
    tmp_s_fu_156_p2 = (!tmp_s_fu_156_p0.read().is_01() || !tmp_s_fu_156_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_s_fu_156_p0.read()) * sc_bigint<32>(tmp_s_fu_156_p1.read());
}

}
