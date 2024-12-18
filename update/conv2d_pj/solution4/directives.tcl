############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "convolution_kernel/Loop2"
set_directive_pipeline "load_input/Inner_Loop"
set_directive_pipeline "write_output/W_Inner_Loop"
set_directive_dataflow "conv2d"
set_directive_unroll "write_output/W_Inner_Loop"
set_directive_unroll "load_input/Inner_Loop"
set_directive_pipeline "load_input/Outer_Loop"
set_directive_unroll "write_output/W_Outer_Loop"
set_directive_interface -mode bram "conv2d" input
set_directive_interface -mode bram "conv2d" kernel
set_directive_interface -mode bram "conv2d" result
set_directive_pipeline "convolution_kernel/Loop_Row"
set_directive_unroll "convolution_kernel/convolution_kernel_label1"
set_directive_pipeline "convolution_kernel/Load_Next_Row"
set_directive_pipeline "convolution_kernel/Loop_Col"
set_directive_unroll "convolution_kernel/Kernel_Row"
set_directive_unroll "convolution_kernel/Kernel_Col"
