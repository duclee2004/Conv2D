#include <iostream>
#include "hls_stream.h"
#include "convolve_2d.h" 

#define TEST_HEIGHT 7
#define TEST_WIDTH 7

int main()
{
    hls::stream<int> in_stream;
    hls::stream<int> out_stream;

    int input_image[TEST_HEIGHT][TEST_WIDTH] = {
        {1, 2, 3, 90, 5, 6, 7},
        {6, 42, 86, 9, 10, 11, 12},
        {11, 12, 13, 45, 206, 16, 17},
        {86, 17, 18, 19, 201, 133, 22},
        {21, 22, 44, 24, 142, 26, 27},
		{26, 67, 28, 53, 30, 4, 32},
		{31, 32, 52, 34, 43, 44, 32}};

    int kernel[KERNEL_SIZE][KERNEL_SIZE] = {
        {1, 0, -1},
        {1, 0, -1},
        {1, 0, -1}};

    for (int i = 0; i < TEST_HEIGHT; i++)
        for (int j = 0; j < TEST_WIDTH; j++)
            in_stream.write(input_image[i][j]);

    convolve_2d(out_stream, in_stream, kernel);

    for (int i = 0; i < TEST_HEIGHT; i++)
    {
        for (int j = 0; j < TEST_WIDTH; j++)
        {
            if (i >= HALF_SIZE && j >= HALF_SIZE)
                std::cout << out_stream.read() << " ";
            else
                std::cout << "0 ";
        }
        std::cout << std::endl;
    }

    return 0;
}
