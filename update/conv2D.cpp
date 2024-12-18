#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>
#include "conv2D.h"

void load_input(data_t input[INPUT_SIZE][INPUT_SIZE], data_t buffer[INPUT_SIZE][INPUT_SIZE]) {
    Outer_Loop:for (int i = 0; i < INPUT_SIZE; i++) {

		Inner_Loop:for (int j = 0; j < INPUT_SIZE; j++) {
            buffer[i][j] = input[i][j];
        }
    }
}

void convolution_kernel(data_t buffer[INPUT_SIZE][INPUT_SIZE],
                        data_t kernel[KERNEL_SIZE][KERNEL_SIZE], 
                        data_t output[OUTPUT_SIZE][OUTPUT_SIZE]) {
    Loop1:for (int i = 0; i < OUTPUT_SIZE; i++) {
		Loop2:for (int j = 0; j < OUTPUT_SIZE; j++) {
            data_t sum = 0;

			Loop3:for (int ki = 0; ki < KERNEL_SIZE; ki++) {
                Loop4:for (int kj = 0; kj < KERNEL_SIZE; kj++) {
                    sum += buffer[i + ki][j + kj] * kernel[ki][kj];
                }
            }
            output[i][j] = sum;
        }
    }
}

void write_output(data_t output[OUTPUT_SIZE][OUTPUT_SIZE], data_t result[OUTPUT_SIZE][OUTPUT_SIZE]) {
    W_Outer_Loop:for (int i = 0; i < OUTPUT_SIZE; i++) {
	 W_Inner_Loop:for (int j = 0; j < OUTPUT_SIZE; j++) {
            result[i][j] = output[i][j];
        }
    }
}

void conv2d(data_t input[INPUT_SIZE][INPUT_SIZE], 
            data_t kernel[KERNEL_SIZE][KERNEL_SIZE], 
            data_t result[OUTPUT_SIZE][OUTPUT_SIZE]) {

    data_t buffer[INPUT_SIZE][INPUT_SIZE];
    data_t output[OUTPUT_SIZE][OUTPUT_SIZE];
    load_input(input, buffer);
    convolution_kernel(buffer, kernel, output);
    write_output(output, result);
}
