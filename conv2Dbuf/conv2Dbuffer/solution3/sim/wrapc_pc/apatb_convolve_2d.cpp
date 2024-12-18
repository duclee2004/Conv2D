// ==============================================================
// File generated on Wed Dec 18 20:25:02 +0700 2024
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


// wrapc file define: "out_stream_V"
#define AUTOTB_TVOUT_out_stream_V  "../tv/cdatafile/c.convolve_2d.autotvout_out_stream_V.dat"
#define AUTOTB_TVIN_out_stream_V  "../tv/cdatafile/c.convolve_2d.autotvin_out_stream_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_stream_V  "../tv/stream_size/stream_size_out_out_stream_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_stream_V  "../tv/stream_size/stream_egress_status_out_stream_V.dat"
// wrapc file define: "in_stream_V"
#define AUTOTB_TVIN_in_stream_V  "../tv/cdatafile/c.convolve_2d.autotvin_in_stream_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_stream_V  "../tv/stream_size/stream_size_in_in_stream_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_stream_V  "../tv/stream_size/stream_ingress_status_in_stream_V.dat"
// wrapc file define: "kernel_0_0"
#define AUTOTB_TVIN_kernel_0_0  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_0_0.dat"
// wrapc file define: "kernel_0_1"
#define AUTOTB_TVIN_kernel_0_1  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_0_1.dat"
// wrapc file define: "kernel_0_2"
#define AUTOTB_TVIN_kernel_0_2  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_0_2.dat"
// wrapc file define: "kernel_1_0"
#define AUTOTB_TVIN_kernel_1_0  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_1_0.dat"
// wrapc file define: "kernel_1_1"
#define AUTOTB_TVIN_kernel_1_1  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_1_1.dat"
// wrapc file define: "kernel_1_2"
#define AUTOTB_TVIN_kernel_1_2  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_1_2.dat"
// wrapc file define: "kernel_2_0"
#define AUTOTB_TVIN_kernel_2_0  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_2_0.dat"
// wrapc file define: "kernel_2_1"
#define AUTOTB_TVIN_kernel_2_1  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_2_1.dat"
// wrapc file define: "kernel_2_2"
#define AUTOTB_TVIN_kernel_2_2  "../tv/cdatafile/c.convolve_2d.autotvin_kernel_2_2.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_stream_V"
#define AUTOTB_TVOUT_PC_out_stream_V  "../tv/rtldatafile/rtl.convolve_2d.autotvout_out_stream_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			out_stream_V_depth = 0;
			in_stream_V_depth = 0;
			kernel_0_0_depth = 0;
			kernel_0_1_depth = 0;
			kernel_0_2_depth = 0;
			kernel_1_0_depth = 0;
			kernel_1_1_depth = 0;
			kernel_1_2_depth = 0;
			kernel_2_0_depth = 0;
			kernel_2_1_depth = 0;
			kernel_2_2_depth = 0;
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
			total_list << "{out_stream_V " << out_stream_V_depth << "}\n";
			total_list << "{in_stream_V " << in_stream_V_depth << "}\n";
			total_list << "{kernel_0_0 " << kernel_0_0_depth << "}\n";
			total_list << "{kernel_0_1 " << kernel_0_1_depth << "}\n";
			total_list << "{kernel_0_2 " << kernel_0_2_depth << "}\n";
			total_list << "{kernel_1_0 " << kernel_1_0_depth << "}\n";
			total_list << "{kernel_1_1 " << kernel_1_1_depth << "}\n";
			total_list << "{kernel_1_2 " << kernel_1_2_depth << "}\n";
			total_list << "{kernel_2_0 " << kernel_2_0_depth << "}\n";
			total_list << "{kernel_2_1 " << kernel_2_1_depth << "}\n";
			total_list << "{kernel_2_2 " << kernel_2_2_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int out_stream_V_depth;
		int in_stream_V_depth;
		int kernel_0_0_depth;
		int kernel_0_1_depth;
		int kernel_0_2_depth;
		int kernel_1_0_depth;
		int kernel_1_1_depth;
		int kernel_1_2_depth;
		int kernel_2_0_depth;
		int kernel_2_1_depth;
		int kernel_2_2_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void convolve_2d (
hls::stream<int > (&out_stream),
hls::stream<int > (&in_stream),
const int kernel[3][3]);

void AESL_WRAP_convolve_2d (
hls::stream<int > (&out_stream),
hls::stream<int > (&in_stream),
const int kernel[3][3])
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

		// define output stream variables: "out_stream"
		std::vector<int > aesl_tmp_0;
		int aesl_tmp_1;
		int aesl_tmp_2 = 0;

		// read output stream size: "out_stream"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_stream_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_stream_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_stream_V, AESL_token); // pop_size
			aesl_tmp_1 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_stream_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "in_stream"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_stream_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_stream_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_stream_V, AESL_token); // pop_size
			int aesl_tmp_4 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_4; i++)
			{
				in_stream.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in_stream_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "out_stream_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_V, AESL_token); // data

			std::vector<sc_bv<32> > out_stream_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_stream_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					out_stream_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_stream_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_stream_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					int tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_stream_V
				{
					// bitslice(31, 0)
					// {
						// celement: out_stream.V(31, 0)
						// {
							sc_lv<32>* out_stream_V_lv0_0_0_1 = new sc_lv<32>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.V(31, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
								{
									out_stream_V_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(out_stream_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out_stream.V(31, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_0[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_0[0]
								// output_left_conversion : aesl_tmp_0[i_0]
								// output_type_conversion : (out_stream_V_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_0[i_0] = (out_stream_V_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "out_stream"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			out_stream.write(aesl_tmp_0[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "out_stream_V"
		char* tvin_out_stream_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_stream_V);
		char* tvout_out_stream_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_stream_V);
		char* wrapc_stream_size_out_out_stream_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_stream_V);
		char* wrapc_stream_egress_status_out_stream_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_stream_V);

		// "in_stream_V"
		char* tvin_in_stream_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_stream_V);
		char* wrapc_stream_size_in_in_stream_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_stream_V);
		char* wrapc_stream_ingress_status_in_stream_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_stream_V);

		// "kernel_0_0"
		char* tvin_kernel_0_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_0_0);

		// "kernel_0_1"
		char* tvin_kernel_0_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_0_1);

		// "kernel_0_2"
		char* tvin_kernel_0_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_0_2);

		// "kernel_1_0"
		char* tvin_kernel_1_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_1_0);

		// "kernel_1_1"
		char* tvin_kernel_1_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_1_1);

		// "kernel_1_2"
		char* tvin_kernel_1_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_1_2);

		// "kernel_2_0"
		char* tvin_kernel_2_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_2_0);

		// "kernel_2_1"
		char* tvin_kernel_2_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_2_1);

		// "kernel_2_2"
		char* tvin_kernel_2_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_kernel_2_2);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "out_stream"
		std::vector<int > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!out_stream.empty())
		{
			aesl_tmp_0.push_back(out_stream.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "in_stream"
		std::vector<int > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!in_stream.empty())
		{
			aesl_tmp_3.push_back(in_stream.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_kernel_0_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_0_0, tvin_kernel_0_0);

		sc_bv<32>* kernel_0_0_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_0_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
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
								kernel_0_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_0_0, "%s\n", (kernel_0_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_0_0, tvin_kernel_0_0);
		}

		tcl_file.set_num(1, &tcl_file.kernel_0_0_depth);
		sprintf(tvin_kernel_0_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_0_0, tvin_kernel_0_0);

		// release memory allocation
		delete [] kernel_0_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_0_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_0_1, tvin_kernel_0_1);

		sc_bv<32>* kernel_0_1_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_0_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
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
								kernel_0_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_0_1, "%s\n", (kernel_0_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_0_1, tvin_kernel_0_1);
		}

		tcl_file.set_num(1, &tcl_file.kernel_0_1_depth);
		sprintf(tvin_kernel_0_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_0_1, tvin_kernel_0_1);

		// release memory allocation
		delete [] kernel_0_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_0_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_0_2, tvin_kernel_0_2);

		sc_bv<32>* kernel_0_2_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_0_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
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
								kernel_0_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_0_2, "%s\n", (kernel_0_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_0_2, tvin_kernel_0_2);
		}

		tcl_file.set_num(1, &tcl_file.kernel_0_2_depth);
		sprintf(tvin_kernel_0_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_0_2, tvin_kernel_0_2);

		// release memory allocation
		delete [] kernel_0_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_1_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_1_0, tvin_kernel_1_0);

		sc_bv<32>* kernel_1_0_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_1_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
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
								kernel_1_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_1_0, "%s\n", (kernel_1_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_1_0, tvin_kernel_1_0);
		}

		tcl_file.set_num(1, &tcl_file.kernel_1_0_depth);
		sprintf(tvin_kernel_1_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_1_0, tvin_kernel_1_0);

		// release memory allocation
		delete [] kernel_1_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_1_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_1_1, tvin_kernel_1_1);

		sc_bv<32>* kernel_1_1_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_1_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
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
								kernel_1_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_1_1, "%s\n", (kernel_1_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_1_1, tvin_kernel_1_1);
		}

		tcl_file.set_num(1, &tcl_file.kernel_1_1_depth);
		sprintf(tvin_kernel_1_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_1_1, tvin_kernel_1_1);

		// release memory allocation
		delete [] kernel_1_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_1_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_1_2, tvin_kernel_1_2);

		sc_bv<32>* kernel_1_2_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_1_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
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
								kernel_1_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_1_2, "%s\n", (kernel_1_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_1_2, tvin_kernel_1_2);
		}

		tcl_file.set_num(1, &tcl_file.kernel_1_2_depth);
		sprintf(tvin_kernel_1_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_1_2, tvin_kernel_1_2);

		// release memory allocation
		delete [] kernel_1_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_2_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_2_0, tvin_kernel_2_0);

		sc_bv<32>* kernel_2_0_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_2_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
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
								kernel_2_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_2_0, "%s\n", (kernel_2_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_2_0, tvin_kernel_2_0);
		}

		tcl_file.set_num(1, &tcl_file.kernel_2_0_depth);
		sprintf(tvin_kernel_2_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_2_0, tvin_kernel_2_0);

		// release memory allocation
		delete [] kernel_2_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_2_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_2_1, tvin_kernel_2_1);

		sc_bv<32>* kernel_2_1_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_2_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
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
								kernel_2_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_2_1, "%s\n", (kernel_2_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_2_1, tvin_kernel_2_1);
		}

		tcl_file.set_num(1, &tcl_file.kernel_2_1_depth);
		sprintf(tvin_kernel_2_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_2_1, tvin_kernel_2_1);

		// release memory allocation
		delete [] kernel_2_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_kernel_2_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_kernel_2_2, tvin_kernel_2_2);

		sc_bv<32>* kernel_2_2_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: kernel_2_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: kernel(31, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
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
								kernel_2_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = kernel_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_kernel_2_2, "%s\n", (kernel_2_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_kernel_2_2, tvin_kernel_2_2);
		}

		tcl_file.set_num(1, &tcl_file.kernel_2_2_depth);
		sprintf(tvin_kernel_2_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_kernel_2_2, tvin_kernel_2_2);

		// release memory allocation
		delete [] kernel_2_2_tvin_wrapc_buffer;

		// push back input stream: "out_stream"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			out_stream.write(aesl_tmp_0[i]);
		}

		// push back input stream: "in_stream"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			in_stream.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		convolve_2d(out_stream, in_stream, kernel);

		CodeState = DUMP_OUTPUTS;
		// pop output stream: "out_stream"
		int aesl_tmp_2 = aesl_tmp_1;
		aesl_tmp_1 = 0;
     aesl_tmp_0.clear();
		while (!out_stream.empty())
		{
			aesl_tmp_0.push_back(out_stream.read());
			aesl_tmp_1++;
		}

		// record input size to tv3: "in_stream"
		int aesl_tmp_5 = in_stream.size();

		// [[transaction]]
		sprintf(tvout_out_stream_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_stream_V, tvout_out_stream_V);

		sc_bv<32>* out_stream_V_tvout_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: out_stream_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: out_stream.V(31, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_0[0]
						// regulate_c_name       : out_stream_V
						// input_type_conversion : aesl_tmp_0[i_0]
						if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_stream_V_tmp_mem;
							out_stream_V_tmp_mem = aesl_tmp_0[i_0];
							out_stream_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = out_stream_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_out_stream_V, "%s\n", (out_stream_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_stream_V, tvout_out_stream_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.out_stream_V_depth);
		sprintf(tvout_out_stream_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_stream_V, tvout_out_stream_V);

		// release memory allocation
		delete [] out_stream_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_out_stream_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_stream_V, wrapc_stream_size_out_out_stream_V);
		sprintf(wrapc_stream_size_out_out_stream_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_stream_V, wrapc_stream_size_out_out_stream_V);
		sprintf(wrapc_stream_size_out_out_stream_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_stream_V, wrapc_stream_size_out_out_stream_V);

		// [[transaction]]
		sprintf(tvin_in_stream_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_stream_V, tvin_in_stream_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, tvin_in_stream_V);

		sc_bv<32>* in_stream_V_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: in_stream_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: in_stream.V(31, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_3[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_3[0]
						// regulate_c_name       : in_stream_V
						// input_type_conversion : aesl_tmp_3[i_0]
						if (&(aesl_tmp_3[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> in_stream_V_tmp_mem;
							in_stream_V_tmp_mem = aesl_tmp_3[i_0];
							in_stream_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = in_stream_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_in_stream_V, "%s\n", (in_stream_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_stream_V, tvin_in_stream_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_4 > aesl_tmp_5)
     {
		sc_int<32> stream_ingress_size_in_stream_V = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, stream_ingress_size_in_stream_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_in_stream_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, stream_ingress_size_in_stream_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_in_stream_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, stream_ingress_size_in_stream_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.in_stream_V_depth);
		sprintf(tvin_in_stream_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_stream_V, tvin_in_stream_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_stream_V, tvin_in_stream_V);

		// release memory allocation
		delete [] in_stream_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_in_stream_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_stream_V, wrapc_stream_size_in_in_stream_V);
		sprintf(wrapc_stream_size_in_in_stream_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_stream_V, wrapc_stream_size_in_in_stream_V);
		sprintf(wrapc_stream_size_in_in_stream_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_stream_V, wrapc_stream_size_in_in_stream_V);

		// push back output stream: "out_stream"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			out_stream.write(aesl_tmp_0[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "out_stream_V"
		delete [] tvout_out_stream_V;
		delete [] tvin_out_stream_V;
		delete [] wrapc_stream_size_out_out_stream_V;
		// release memory allocation: "in_stream_V"
		delete [] tvin_in_stream_V;
		delete [] wrapc_stream_size_in_in_stream_V;
		// release memory allocation: "kernel_0_0"
		delete [] tvin_kernel_0_0;
		// release memory allocation: "kernel_0_1"
		delete [] tvin_kernel_0_1;
		// release memory allocation: "kernel_0_2"
		delete [] tvin_kernel_0_2;
		// release memory allocation: "kernel_1_0"
		delete [] tvin_kernel_1_0;
		// release memory allocation: "kernel_1_1"
		delete [] tvin_kernel_1_1;
		// release memory allocation: "kernel_1_2"
		delete [] tvin_kernel_1_2;
		// release memory allocation: "kernel_2_0"
		delete [] tvin_kernel_2_0;
		// release memory allocation: "kernel_2_1"
		delete [] tvin_kernel_2_1;
		// release memory allocation: "kernel_2_2"
		delete [] tvin_kernel_2_2;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

