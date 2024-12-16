#include "convolve2D.h"
#include <iostream>
using namespace std;

int main() {
	float input[ROWS][COLS] = {
		    {3, 5, 1, 7, 2},
		    {4, 8, 6, 2, 9},
		    {1, 0, 3, 5, 6},
		    {8, 7, 2, 4, 1},
		    {9, 3, 6, 8, 5}
	};

	float kernel[KERNEL_SIZE][KERNEL_SIZE] = {
	    {0, 1, 0},
	    {1, -4, 1},
	    {0, 1, 0}
	};

    float output[ROWS-KERNEL_SIZE+1][COLS-KERNEL_SIZE+1] = {0};

    convolve2D(input, kernel, output);

    cout << "Output matrix:" << endl;
    for (int i = 0; i < ROWS-KERNEL_SIZE+1; i++) {
        for (int j = 0; j < COLS-KERNEL_SIZE+1; j++) {
            cout << output[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
