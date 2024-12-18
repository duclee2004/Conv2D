# ==============================================================
# File generated on Wed Dec 18 10:55:53 +0700 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../testbench.cpp -cflags { -Wno-unknown-pragmas}
add_files conv2D.cpp
set_part xc7z020clg484-1
create_clock -name default -period 10
set_directive_pipeline convolution_kernel/Loop2 
set_directive_pipeline load_input/Inner_Loop 
set_directive_pipeline write_output/W_Inner_Loop 
set_directive_dataflow conv2d 
set_directive_unroll write_output/W_Inner_Loop 
set_directive_unroll load_input/Inner_Loop 
set_directive_pipeline load_input/Outer_Loop 
set_directive_unroll write_output/W_Outer_Loop 
set_directive_interface conv2d 
set_directive_interface conv2d 
set_directive_interface conv2d 
set_directive_pipeline convolution_kernel/Loop_Row 
set_directive_unroll convolution_kernel/convolution_kernel_label1 
set_directive_pipeline convolution_kernel/Load_Next_Row 
set_directive_pipeline convolution_kernel/Loop_Col 
set_directive_unroll convolution_kernel/Kernel_Row 
set_directive_unroll convolution_kernel/Kernel_Col 
