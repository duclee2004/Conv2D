############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv2d_pj
set_top conv2d
add_files conv2D.cpp
add_files conv2D.cpp
add_files -tb testbench.cpp
add_files -tb testbench.cpp
open_solution "solution4"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./conv2d_pj/solution4/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
