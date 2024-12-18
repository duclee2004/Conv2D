#ifndef CONV2D_H
#define CONV2D_H

#define INPUT_SIZE 32
#define KERNEL_SIZE 3
#define OUTPUT_SIZE (INPUT_SIZE - KERNEL_SIZE + 1)

typedef int data_t;
void conv2d(data_t input[INPUT_SIZE][INPUT_SIZE], 
            data_t kernel[KERNEL_SIZE][KERNEL_SIZE], 
            data_t result[OUTPUT_SIZE][OUTPUT_SIZE]);

#endif // CONV2D_H