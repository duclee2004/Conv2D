#include "convolution2d.h"
#include <stdio.h>


int compute_convolution(int input[IMG_SIZE][IMG_SIZE], 
                        int kernel[KERNEL_SIZE][KERNEL_SIZE], 
                        int row, int col) 
{
    int sum = 0;

    Kernel_Row: for (int kr = 0; kr < KERNEL_SIZE; kr++) {
        #pragma HLS UNROLL
        Kernel_Col: for (int kc = 0; kc < KERNEL_SIZE; kc++) {
            sum += input[row + kr][col + kc] * kernel[kr][kc];
        }
    }
    return sum;
}

void convolution_2d(int input[IMG_SIZE][IMG_SIZE], 
                    int kernel[KERNEL_SIZE][KERNEL_SIZE], 
                    int output[OUT_SIZE][OUT_SIZE]) 
{
    #pragma HLS INTERFACE s_axilite port=input bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=kernel bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=output bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL

    #pragma HLS ARRAY_PARTITION variable=kernel complete dim=2
    #pragma HLS ARRAY_PARTITION variable=input cyclic factor=3 dim=2

    Row_Loop: for (int r = 0; r < OUT_SIZE; r++) {
        Col_Loop: for (int c = 0; c < OUT_SIZE; c++) {
            #pragma HLS PIPELINE II=1
            output[r][c] = compute_convolution(input, kernel, r, c);
        }
    }
}

void print_matrix(int matrix[][IMG_SIZE], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%4d ", matrix[i][j]);
        }
        printf("\n");
    }
}

void print_output_matrix(int matrix[][OUT_SIZE]) {
    for (int i = 0; i < OUT_SIZE; i++) {
        for (int j = 0; j < OUT_SIZE; j++) {
            printf("%4d ", matrix[i][j]);
        }
        printf("\n");
    }
}
