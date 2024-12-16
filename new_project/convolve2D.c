#include "convolve2D.h"
#include <stdio.h>

void convolve2D(float input[ROWS][COLS], float kernel[KERNEL_SIZE][KERNEL_SIZE], float output[ROWS-KERNEL_SIZE+1][COLS-KERNEL_SIZE+1]) {
    for (int i = 0; i < ROWS - KERNEL_SIZE + 1; i++) {
        for (int j = 0; j < COLS - KERNEL_SIZE + 1; j++) {
            float sum = 0.0;
            for (int ki = 0; ki < KERNEL_SIZE; ki++) {
                for (int kj = 0; kj < KERNEL_SIZE; kj++) {
                    sum += input[i + ki][j + kj] * kernel[ki][kj];
                    printf("input[%d][%d] = %.0f * kernel[%d][%d] = %.0f -> partial sum = %.0f\n", 
                           i + ki, j + kj, input[i + ki][j + kj], ki, kj, kernel[ki][kj], sum);
                }
            }
            output[i][j] = sum;
            printf("output[%d][%d] = %.0f\n", i, j, sum);
        }
    }
}
