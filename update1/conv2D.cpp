#include <stdio.h>
#include <hls_stream.h>
#include <ap_int.h>
#include "conv2D.h"

void load_input(data_t input[INPUT_SIZE][INPUT_SIZE], data_t buffer[INPUT_SIZE][INPUT_SIZE]) {

   load_input_label1: for (int i = 0; i < INPUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
       load_input_label2: for (int j = 0; j < INPUT_SIZE; j++) {

            buffer[i][j] = input[i][j];
        }
    }
}

void convolution_kernel(data_t buffer[INPUT_SIZE][INPUT_SIZE], 
                        data_t kernel[KERNEL_SIZE][KERNEL_SIZE], 
                        data_t output[OUTPUT_SIZE][OUTPUT_SIZE]) {

    for (int i = 0; i < OUTPUT_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
            data_t sum = 0;
            for (int ki = 0; ki < KERNEL_SIZE; ki++) {
#pragma HLS UNROLL
                for (int kj = 0; kj < KERNEL_SIZE; kj++) {
#pragma HLS UNROLL
                    sum += buffer[i + ki][j + kj] * kernel[ki][kj];
                }
            }
            output[i][j] = sum;
        }
    }
}

void write_output(data_t output[OUTPUT_SIZE][OUTPUT_SIZE], data_t result[OUTPUT_SIZE][OUTPUT_SIZE]) {
   write_output_label3: for (int i = 0; i < OUTPUT_SIZE; i++) {
       write_output_label4: for (int j = 0; j < OUTPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
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
