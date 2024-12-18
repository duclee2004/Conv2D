// ==============================================================
// File generated on Wed Dec 18 10:55:51 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module conv2d_buffer
#(parameter
    DataWidth    = 32,
    AddressRange = 32,
    AddressWidth = 10,
    BufferCount  = 2,
    MemLatency   = 1,
    IndexWidth   = 1
) (
    // system signals
    input  wire                    clk,
    input  wire                    reset,
    // initiator
    input  wire                    i_ce,
    input  wire                    i_write,
    output wire                    i_full_n,
    input  wire                    i_ce0,
    input  wire                    i_we0,
    input  wire [AddressWidth-1:0] i_address0,
    input  wire [DataWidth-1:0]    i_d0,
    output wire [DataWidth-1:0]    i_q0,
    input  wire                    i_ce1,
    input  wire                    i_we1,
    input  wire [AddressWidth-1:0] i_address1,
    input  wire [DataWidth-1:0]    i_d1,
    output wire [DataWidth-1:0]    i_q1,
    // target
    input  wire                    t_ce,
    input  wire                    t_read,
    output wire                    t_empty_n,
    input  wire                    t_ce0,
    input  wire                    t_we0,
    input  wire [AddressWidth-1:0] t_address0,
    input  wire [DataWidth-1:0]    t_d0,
    output wire [DataWidth-1:0]    t_q0,
    input  wire                    t_ce1,
    input  wire                    t_we1,
    input  wire [AddressWidth-1:0] t_address1,
    input  wire [DataWidth-1:0]    t_d1,
    output wire [DataWidth-1:0]    t_q1
);
//------------------------Local signal-------------------
// control/status
reg  [IndexWidth-1:0]   iptr    = 1'b0; // initiator index
reg  [IndexWidth-1:0]   tptr    = 1'b0; // target index
reg  [IndexWidth:0]     count   = 1'b0; // count of written buffers
reg                     full_n  = 1'b1; // whether all buffers are written
reg                     empty_n = 1'b0; // whether none of the buffers is written
wire                    push_buf;       // finish writing a buffer
wire                    pop_buf;        // finish reading a buffer
reg [MemLatency-1:0]    pop_buf_delay;     // the delay of finish reading a buffer
// buffer signals
wire                    buf_ce0[0:BufferCount-1];
wire                    buf_we0[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_d0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q0[0:BufferCount-1];
wire                    buf_ce1[0:BufferCount-1];
wire                    buf_we1[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a1[0:BufferCount-1];
wire [DataWidth-1:0]    buf_d1[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q1[0:BufferCount-1];
//------------------------Instantiation------------------
genvar i;
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : gen_buffer
        conv2d_buffer_memcore conv2d_buffer_memcore_U (
            .clk      ( clk ),
            .reset    ( reset ),
            .ce0      ( buf_ce0[i] ),
            .we0      ( buf_we0[i] ),
            .address0 ( buf_a0[i] ),
            .d0       ( buf_d0[i] ),
            .q0       ( buf_q0[i] ),
            .ce1      ( buf_ce1[i] ),
            .we1      ( buf_we1[i] ),
            .address1 ( buf_a1[i] ),
            .d1       ( buf_d1[i] ),
            .q1       ( buf_q1[i] )
        );
    end
endgenerate

//++++++++++++++++++++++++buffer signals+++++++++++++++++
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : connect_buffer
        assign buf_ce0[i] = (iptr == i) ? i_ce0 :
                            (tptr == i && empty_n)? t_ce0 :
                            1'b0;
        assign buf_we0[i] = (iptr == i) ? i_we0 :
                            (tptr == i && empty_n)? t_we0 :
                            1'b0;
        assign buf_a0[i]  = (iptr == i) ? i_address0 : t_address0;
        assign buf_d0[i]  = (iptr == i) ? i_d0       : t_d0;
        assign buf_ce1[i] = (iptr == i) ? i_ce1 :
                            (tptr == i && empty_n)? t_ce1 :
                            1'b0;
        assign buf_we1[i] = (iptr == i) ? i_we1 :
                            (tptr == i && empty_n)? t_we1 :
                            1'b0;
        assign buf_a1[i]  = (iptr == i) ? i_address1 : t_address1;
        assign buf_d1[i]  = (iptr == i) ? i_d1       : t_d1;
    end
endgenerate
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//------------------------Body---------------------------
assign i_q0      = buf_q0[iptr];
assign t_q0      = buf_q0[tptr];
assign i_q1      = buf_q1[iptr];
assign t_q1      = buf_q1[tptr];

//++++++++++++++++++++++++output+++++++++++++++++++++++++
assign i_full_n  = full_n;
assign t_empty_n = empty_n;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++control/status+++++++++++++++++
assign push_buf = i_ce & i_write & full_n;
assign pop_buf  = t_ce & t_read & empty_n;

// iptr
always @(posedge clk) begin
    if (reset == 1'b1)
        iptr <= 1'b0;
    else if (push_buf) begin
        if (iptr == BufferCount - 1'b1)
            iptr <= 1'b0;
        else
            iptr <= iptr + 1'b1;
    end
end

// pop_buf_delay
always @(posedge clk) begin
    if (reset == 1'b1)
        pop_buf_delay <= 1'b0;
    else begin
        pop_buf_delay[0] <= pop_buf;
    end
end


// tptr
always @(posedge clk) begin
    if (reset == 1'b1)
        tptr <= 1'b0;
    else if (pop_buf_delay[MemLatency-1]) begin
        if (tptr == BufferCount - 1'b1)
            tptr <= 1'b0;
        else
            tptr <= tptr + 1'b1;
    end
end

// count
always @(posedge clk) begin
    if (reset == 1'b1)
        count <= 1'b0;
    else if (push_buf && !pop_buf)
        count <= count + 1'b1;
    else if (!push_buf && pop_buf)
        count <= count - 1'b1;
end

// full_n
always @(posedge clk) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (push_buf && !pop_buf && count == BufferCount - 2'd2)
        full_n <= 1'b0;
    else if (!push_buf && pop_buf)
        full_n <= 1'b1;
end

// empty_n
always @(posedge clk) begin
    if (reset == 1'b1)
        empty_n <= 1'b0;
    else if (push_buf && !pop_buf)
        empty_n <= 1'b1;
    else if (!push_buf && pop_buf && count == 1'b1)
        empty_n <= 1'b0;
end
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++

endmodule

