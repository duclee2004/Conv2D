#ifndef CONVOLVE2D_H
#define CONVOLVE2D_H
#define ROWS 5
#define COLS 5
#define KERNEL_SIZE 3

void convolve2D(float input[ROWS][COLS], float kernel[KERNEL_SIZE][KERNEL_SIZE], float output[ROWS-KERNEL_SIZE+1][COLS-KERNEL_SIZE+1]);

#endif
