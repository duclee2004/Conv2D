# ==============================================================
# File generated on Wed Dec 18 02:03:15 +0700 2024
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
