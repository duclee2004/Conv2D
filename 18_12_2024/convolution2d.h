#ifndef CONVOLUTION2D_H
#define CONVOLUTION2D_H

// �?ịnh nghĩa kích thước cho ma trận và kernel
#define IMG_SIZE 6       // Kích thước ma trận đầu vào (6x6)
#define KERNEL_SIZE 3    // Kích thước kernel (3x3)
#define OUT_SIZE (IMG_SIZE - KERNEL_SIZE + 1) // Kích thước ma trận kết quả

// Hàm tính tích chập cho một vùng của ma trận
int compute_convolution(int input[IMG_SIZE][IMG_SIZE], 
                        int kernel[KERNEL_SIZE][KERNEL_SIZE], 
                        int row, int col);

// Hàm thực hiện toàn bộ tích chập 2D
void convolution_2d(int input[IMG_SIZE][IMG_SIZE], 
                    int kernel[KERNEL_SIZE][KERNEL_SIZE], 
                    int output[OUT_SIZE][OUT_SIZE]);

// Hàm in ma trận (kích thước tùy chỉnh)
void print_matrix(int matrix[][IMG_SIZE], int rows, int cols);

// Hàm in ma trận kết quả (kích thước cố định OUT_SIZE x OUT_SIZE)
void print_output_matrix(int matrix[][OUT_SIZE]);

#endif // CONVOLUTION2D_H
