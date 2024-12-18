#ifndef CONVOLVE_2D_H
#define CONVOLVE_2D_H

#include "hls_stream.h"

#define KERNEL_SIZE 3
#define HALF_SIZE ((KERNEL_SIZE - 1) / 2)

void convolve_2d(hls::stream<int>& out_stream, hls::stream<int>& in_stream, const int kernel[KERNEL_SIZE][KERNEL_SIZE]);
int convolve(int window[KERNEL_SIZE][KERNEL_SIZE], const int kernel[KERNEL_SIZE][KERNEL_SIZE]);

inline bool bounds_ok(int y, int x);

#endif
