############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv2Dbuffer
set_top convolve_2d
add_files convolve_2d.cpp
add_files convolve_2d.h
add_files -tb test_convolve_2d.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./conv2Dbuffer/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
