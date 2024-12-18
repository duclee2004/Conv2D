#include "hls_stream.h"
#include "ap_int.h"
#include "convolve_2d.h"

#define HEIGHT 7
#define WIDTH 7

inline bool bounds_ok(int y, int x)
{
    return (0 <= y && y < HEIGHT && 0 <= x && x < WIDTH);
}

int convolve(int window[KERNEL_SIZE][KERNEL_SIZE], const int kernel[KERNEL_SIZE][KERNEL_SIZE]) {
    int result = 0;
    convolve_label3:for (int i = 0; i < KERNEL_SIZE; i++) {
        convolve_label4:for (int j = 0; j < KERNEL_SIZE; j++) {
            result += window[i][j] * kernel[i][j];
        }
    }
    return result;
}

void convolve_2d(
    hls::stream<int>& out_stream,
    hls::stream<int>& in_stream,
    const int kernel[KERNEL_SIZE][KERNEL_SIZE])
{
    int line_buf[KERNEL_SIZE - 1][WIDTH];
    int window[KERNEL_SIZE][KERNEL_SIZE];
    int right[KERNEL_SIZE];

    for (int i = 0; i < KERNEL_SIZE - 1; i++)
        convolve_2d_label0:for (int j = 0; j < WIDTH; j++)
            line_buf[i][j] = 0;

    convolve_2d_label6:for (int y = 0; y < HEIGHT; y++) {
        convolve_2d_label1:for (int x = 0; x < WIDTH; x++) {
            int val_in = 0;
            if (bounds_ok(y, x))
                val_in = in_stream.read();

            convolve_2d_label2:for (int i = 0; i < KERNEL_SIZE; i++)
                convolve_2d_label3:for (int j = 0; j < KERNEL_SIZE - 1; j++)
                    window[i][j] = window[i][j + 1];

            convolve_2d_label4:for (int i = 0; i < KERNEL_SIZE - 1; i++)
                window[i][KERNEL_SIZE - 1] = line_buf[i][x];

            window[KERNEL_SIZE - 1][KERNEL_SIZE - 1] = val_in;

            convolve_2d_label5:for (int i = 0; i < KERNEL_SIZE - 1; i++)
                line_buf[i][x] = (i == KERNEL_SIZE - 2) ? val_in : line_buf[i + 1][x];

            if (y >= HALF_SIZE && x >= HALF_SIZE) {
                int result = convolve(window, kernel);
                out_stream.write(result);
            }
        }
    }
}
