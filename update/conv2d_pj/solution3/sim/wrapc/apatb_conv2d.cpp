// ==============================================================
// File generated on Wed Dec 18 02:11:05 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "input_r"
#define AUTOTB_TVIN_input_r  "../tv/cdatafile/c.conv2d.autotvin_input_r.dat"
// wrapc file define: "kernel"
#define AUTOTB_TVIN_kernel  "../tv/cdatafile/c.conv2d.autotvin_kernel.dat"
// wrapc file define: "result"
#define AUTOTB_TVOUT_result  "../tv/cdatafile/c.conv2d.autotvout_result.dat"
#define AUTOTB_TVIN_result  "../tv/cdatafile/c.conv2d.autotvin_result.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "result"
#define AUTOTB_TVOUT_PC_result  "../tv/rtldatafile/rtl.conv2d.autotvout_result.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_r_depth = 0;
			kernel_depth = 0;
			result_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{input_r " << input_r_depth << "}\n";
			total_list << "{kernel " << kernel_depth << "}\n";
			total_list << "{result " << result_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_r_depth;
		int kernel_depth;
		int result_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void conv2d (
int input[32][32],
int kernel[3][3],
int result[30][30]);

void AESL_WRAP_conv2d (
int input[32][32],
int kernel[3][3],
int result[30][30])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "result"
		aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_token); // data

			sc_bv<32> *result_pc_buffer = new sc_bv<32>[900];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'result', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'result', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					result_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_result))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: result
				{
					// bitslice(31, 0)
					// {
						// celement: result(31, 0)
						// {
							sc_lv<32>* result_lv0_0_29_1_lv1_0_29_1 = new sc_lv<32>[900];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: result(31, 0)
						{
							// carray: (0) => (29) @ (1)
							for (int i_0 = 0; i_0 <= 29; i_0 += 1)
							{
								// carray: (0) => (29) @ (1)
								for (int i_1 = 0; i_1 <= 29; i_1 += 1)
								{
									if (&(result[0][0]) != NULL) // check the null address if the c port is array or others
									{
										result_lv0_0_29_1_lv1_0_29_1[hls_map_index].range(31, 0) = sc_bv<32>(result_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: result(31, 0)
						{
							// carray: (0) => (29) @ (1)
							for (int i_0 = 0; i_0 <= 29; i_0 += 1)
							{
								// carray: (0) => (29) @ (1)
								for (int i_1 = 0; i_1 <= 29; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : result[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : result[0][0]
									// output_left_conversion : result[i_0][i_1]
									// output_type_conversion : (result_lv0_0_29_1_lv1_0_29_1[hls_map_index]).to_uint64()
									if (&(result[0][0]) != NULL) // check the null address if the c port is array or others
									{
										result[i_0][i_1] = (result_lv0_0_29_1_lv1_0_29_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] result_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input_r"
		char* tvin_input_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_r);

		// "kernel"
		char* tvin_kernel = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel);

		// "result"
		char* tvin_result = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_result);
		char* tvout_result = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_result);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_input_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		sc_bv<32>* input_r_tvin_wrapc_buffer = new sc_bv<32>[1024];

		// RTL Name: input_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: input(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (0) => (31) @ (1)
						for (int i_1 = 0; i_1 <= 31; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : input[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : input[0][0]
							// regulate_c_name       : input
							// input_type_conversion : input[i_0][i_1]
							if (&(input[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> input_tmp_mem;
								input_tmp_mem = input[i_0][i_1];
								input_r_tvin_wrapc_buffer[hls_map_index].range(31, 0) = input_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvin_input_r, "%s\n", (input_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);
		}

		tcl_file.set_num(1024, &tcl_file.input_r_depth);
		sprintf(tvin_input_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		// release memory allocation
		delete [] input_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel, tvin_kernel);

		sc_bv<32>* kernel_tvin_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: kernel
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : kernel[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : kernel[0][0]
							// regulate_c_name       : kernel
							// input_type_conversion : kernel[i_0][i_1]
							if (&(kernel[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> kernel_tmp_mem;
								kernel_tmp_mem = kernel[i_0][i_1];
								kernel_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_kernel, "%s\n", (kernel_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel, tvin_kernel);
		}

		tcl_file.set_num(9, &tcl_file.kernel_depth);
		sprintf(tvin_kernel, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel, tvin_kernel);

		// release memory allocation
		delete [] kernel_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_result, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_result, tvin_result);

		sc_bv<32>* result_tvin_wrapc_buffer = new sc_bv<32>[900];

		// RTL Name: result
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: result(31, 0)
				{
					// carray: (0) => (29) @ (1)
					for (int i_0 = 0; i_0 <= 29; i_0 += 1)
					{
						// carray: (0) => (29) @ (1)
						for (int i_1 = 0; i_1 <= 29; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : result[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : result[0][0]
							// regulate_c_name       : result
							// input_type_conversion : result[i_0][i_1]
							if (&(result[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> result_tmp_mem;
								result_tmp_mem = result[i_0][i_1];
								result_tvin_wrapc_buffer[hls_map_index].range(31, 0) = result_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 900; i++)
		{
			sprintf(tvin_result, "%s\n", (result_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_result, tvin_result);
		}

		tcl_file.set_num(900, &tcl_file.result_depth);
		sprintf(tvin_result, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_result, tvin_result);

		// release memory allocation
		delete [] result_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		conv2d(input, kernel, result);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_result, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_result, tvout_result);

		sc_bv<32>* result_tvout_wrapc_buffer = new sc_bv<32>[900];

		// RTL Name: result
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: result(31, 0)
				{
					// carray: (0) => (29) @ (1)
					for (int i_0 = 0; i_0 <= 29; i_0 += 1)
					{
						// carray: (0) => (29) @ (1)
						for (int i_1 = 0; i_1 <= 29; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : result[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : result[0][0]
							// regulate_c_name       : result
							// input_type_conversion : result[i_0][i_1]
							if (&(result[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> result_tmp_mem;
								result_tmp_mem = result[i_0][i_1];
								result_tvout_wrapc_buffer[hls_map_index].range(31, 0) = result_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 900; i++)
		{
			sprintf(tvout_result, "%s\n", (result_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_result, tvout_result);
		}

		tcl_file.set_num(900, &tcl_file.result_depth);
		sprintf(tvout_result, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_result, tvout_result);

		// release memory allocation
		delete [] result_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_r"
		delete [] tvin_input_r;
		// release memory allocation: "kernel"
		delete [] tvin_kernel;
		// release memory allocation: "result"
		delete [] tvout_result;
		delete [] tvin_result;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

