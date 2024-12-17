#include "convolution2d.h"

int main() {
    int input[IMG_SIZE][IMG_SIZE] = {
        {1, 2, 3, 0, 1, 2},
        {4, 5, 6, 1, 2, 3},
        {7, 8, 9, 0, 1, 2},
        {0, 1, 2, 3, 4, 5},
        {1, 2, 3, 4, 5, 6},
        {4, 5, 6, 7, 8, 9}
    };

    int kernel[KERNEL_SIZE][KERNEL_SIZE] = {
        {1, 0, -1},
        {1, 0, -1},
        {1, 0, -1}
    };

    int output[OUT_SIZE][OUT_SIZE] = {0};

    printf("Input Matrix (6x6):\n");
    print_matrix(input, IMG_SIZE, IMG_SIZE);

    printf("\nKernel (3x3):\n");
    print_matrix(kernel, KERNEL_SIZE, KERNEL_SIZE);

    convolution_2d(input, kernel, output);

    printf("\nOutput Matrix (4x4):\n");
    print_output_matrix(output);

    return 0;
}
