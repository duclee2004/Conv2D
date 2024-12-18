############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type complete -dim 0 "convolve_2d" window
set_directive_array_partition -type complete -dim 1 "convolve_2d" line_buf
set_directive_array_partition -type complete -dim 1 "convolve_2d" right
set_directive_interface -mode bram "convolve_2d" kernel
set_directive_interface -mode axis -register -register_mode both "convolve_2d" in_stream
set_directive_interface -mode axis -register -register_mode both "convolve_2d" out_stream
set_directive_pipeline "convolve_2d/convolve_2d_label0"
set_directive_pipeline "convolve_2d/convolve_2d_label1"
set_directive_array_partition -type complete -dim 0 "convolve_2d" kernel
set_directive_array_partition -type complete -dim 1 "convolve_2d" window
set_directive_array_partition -type complete -dim 0 "convolve_2d" line_buf
set_directive_unroll "convolve/convolve_label4"
set_directive_unroll "convolve_2d/convolve_2d_label4"
