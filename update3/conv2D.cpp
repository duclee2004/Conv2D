#include <hls_stream.h>
#include <ap_int.h>
#include "conv2D.h"

void load_input(data_t input[INPUT_SIZE][INPUT_SIZE], hls::stream<data_t> &input_stream) {
   load_input_label1: for (int i = 0; i < INPUT_SIZE; i++) {
       load_input_label2: for (int j = 0; j < INPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
            input_stream.write(input[i][j]);
        }
    }
}

void convolution_kernel(hls::stream<data_t> &input_stream,
                        data_t kernel[KERNEL_SIZE][KERNEL_SIZE],
                        hls::stream<data_t> &output_stream) {
    data_t buffer[INPUT_SIZE][INPUT_SIZE];
#pragma HLS ARRAY_PARTITION variable=buffer complete dim=2

    for (int i = 0; i < INPUT_SIZE; i++) {
        for (int j = 0; j < INPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
            buffer[i][j] = input_stream.read();
        }
    }

    for (int i = 0; i < OUTPUT_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
            data_t sum = 0;
            for (int ki = 0; ki < KERNEL_SIZE; ki++) {
                for (int kj = 0; kj < KERNEL_SIZE; kj++) {
                    sum += buffer[i + ki][j + kj] * kernel[ki][kj];
                }
            }
            output_stream.write(sum);
        }
    }
}

void write_output(hls::stream<data_t> &output_stream, data_t result[OUTPUT_SIZE][OUTPUT_SIZE]) {
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
            result[i][j] = output_stream.read();
        }
    }
}

void conv2d(data_t input[INPUT_SIZE][INPUT_SIZE], 
            data_t kernel[KERNEL_SIZE][KERNEL_SIZE], 
            data_t result[OUTPUT_SIZE][OUTPUT_SIZE]) {

    hls::stream<data_t> input_stream("input_stream");
    hls::stream<data_t> output_stream("output_stream");

#pragma HLS STREAM variable=input_stream depth=512
#pragma HLS STREAM variable=output_stream depth=512

    load_input(input, input_stream);
    convolution_kernel(input_stream, kernel, output_stream);
    write_output(output_stream, result);
}
