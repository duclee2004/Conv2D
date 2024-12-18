#include "conv2D.h"
#include <stdio.h>

data_t input[INPUT_SIZE][INPUT_SIZE];
data_t kernel[KERNEL_SIZE][KERNEL_SIZE];
data_t result[OUTPUT_SIZE][OUTPUT_SIZE];

int main() {

    for (int i = 0; i < INPUT_SIZE; i++) {
        for (int j = 0; j < INPUT_SIZE; j++) {
            input[i][j] = i + j;
        }
    }
    for (int i2 = 0; i2 < KERNEL_SIZE; i2++) {
        for (int j1 = 0; j1 < KERNEL_SIZE; j1++) {
            kernel[i2][j1] = 1;
        }
    }

    conv2d(input, kernel, result);

    for (int i3 = 0; i3 < OUTPUT_SIZE; i3++) {
        for (int j2 = 0; j2 < OUTPUT_SIZE; j2++) {
            printf("%d ", result[i3][j2]);
        }
        printf("\n");
    }
    return 0;
}
