// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);
 
    wire [`MPRJ_IO_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-1:0] io_oeb;

    wire [7:0] in1, in2;
    wire [21:0] in3;
    wire [15:0] out;
    //wire en_mode;

    assign {in3, in1, in2} = io_in[`MPRJ_IO_PADS-2:0];
    assign io_out = {22'd0, out};
 
    axmul u1(.a(in1), .b(in2), .c(out));

endmodule


module axmul(a,b,c);
   
input [7:0]a;
input [7:0]b;
output [15:0]c;

wire [15:0]q0;	
wire [15:0]q1;	
wire [15:0]q2;
wire [15:0]q3;	
wire [15:0]c;

wire s2,s3,s4,s5,s6,s7,s8,c1,c2,c3,c4,c5,c6,c7,c8,w14;

wire [7:0] temp1,temp2;


// using 4 4x4 multipliers
prop_mult2_sdk z1(a[3:0],b[3:0],q0[7:0]);

prop_mult2_sdk z2(a[7:4],b[3:0],q1[7:0]);


prop_mult2_sdk z3(a[3:0],b[7:4],q2[7:0]);
//mul_4bit z3 (a[3:0],b[7:4],q2[7:0]);

prop_mult2_sdk z4(a[7:4],b[7:4],q3[7:0]);
//mul_4bit z4 (a[7:4],b[7:4],q3[7:0]);


assign c[3:0]=q0[3:0];
fulladd f1 ({q0[4],q1[0],q2[0]},c[4],c1);
fulladd f2 ({q0[5],q1[1],q2[1]},s2,c2);
fulladd f3 ({q0[6],q1[2],q2[2]},s3,c3);
fulladd f4 ({q0[7],q1[3],q2[3]},s4,c4);


fulladd f5 ({q3[0],q2[4],q3[4]},s5,c5);
fulladd f6 ({q3[1],q2[5],q3[5]},s6,c6);
fulladd f7 ({q3[2],q2[6],q3[6]},s7,c7);
fulladd f8 ({q3[3],q2[7],q3[7]},s8,c8);

assign temp1[7:0]={q3[4],s8,s7,s6,s5,s4,s3,s2};
assign temp2[7:0]={c8,c7,c6,c5,c4,c3,c2,c1};

recurse_config_8 ad1 (temp1, temp2, 1'b0, {w14,c[12:5]}); 

acc_incrementor_3bit_cin u2 (q3[7:5],w14,c[15:13]);


endmodule



module acc_incrementor_3bit_cin(a,cin,out);
input [2:0]a;
input cin;
output [2:0]out;
wire w1,w2,w3;

assign w1=a[0]^a[1];
assign w2=a[0]&a[1];
assign w3=w2^a[2];
assign out[0]=cin^a[0];
assign out[1]=(~cin&a[1])|(cin & w1);
assign out[2]=(~cin&a[2])| (cin & w3);
endmodule


module prop_mult2_sdk(A,B,out);
input [3:0] A,B;
output [7:0] out;
 wire [3:0] p0,p1,p2,p3;
 assign  p0 = A &{4{B[0]}};
 assign  p1 = A & {4{B[1]}};
 assign  p2 = A & {4{B[2]}};
 assign  p3 = A & {4{B[3]}};
  assign out[0]=p0[0];
 assign out[1]=p0[1]^p1[0];
 assign out[2]=p0[2]|p1[1]|p2[0];
 assign out[3]= p0[3]|p1[2]|p2[1]|p3[0];
 assign out[4]=p2[2]|p3[1]|p1[3];
 assign out[5]= p2[3]^p3[2];
 assign out[6]= p3[3];
 assign out[7]=p3[3]&p2[2];
 endmodule
 
 
 
module fulladd(x, sum, carry);

output sum,carry;
input [2:0] x;

wire w;	
	assign 	 w = x[2] ^ x[1];
        assign	 sum = w ^ x[0];
	assign 	 carry = (x[2] & x[1])|(w & x[0]);
endmodule

module recurse_config_8(a, b, cin, sum); 

parameter num = 8;

output [num:0] sum;
input [num-1:0] a,b;
input cin;

//wire [2*num+1:0] x;
wire [2*num+1:0] x [0:$clog2(num)];

assign x[0][1:0]={2{cin}};  					// Input carry
assign sum[num] = x[$clog2(num)][2*num];		// Output Carry

genvar i, j;
generate
begin: kgp_gen		// kgp generation
	for (i=0; i<num; i=i+1)
	kgp t(a[i], b[i], x[0][2*i+3:2*i+2]);
end
begin:recursiveStg	//recursive
	for (i=0; i<$clog2(num); i=i+1)
	begin
	assign x[i+1][(2**(i+1))-1:0]=x[i][(2**(i+1))-1:0];
		for(j=(2**(i+1)); j<2*num+1; j=j+2)
		begin
		recursive_stage1 s(x[i][j+1-(2**(i+1)):j-(2**(i+1))],x[i][j+1:j],x[i+1][j+1:j]);		
		end
	end
end
begin:addition		// SUM Calculation
	for(i=0; i<num; i=i+1)
	assign sum[i] = a[i]^b[i]^x[$clog2(num)][2*i];
end
endgenerate


endmodule



module kgp(a,b,y);

    input a,b;						output [1:0] y;

    assign y[0]=a | b;
    assign y[1]=a & b;

    endmodule
    
 module recursive_stage1(a,b,y);

    input [1:0] a,b;				output [1:0] y;

    wire [1:0] y;
    wire b0;
    not n1(b0,b[1]);
    wire f,g0,g1;
    and a1(f,b[0],b[1]);
    and a2(g0,b0,b[0],a[0]);
    and a3(g1,b0,b[0],a[1]);

    or o1(y[0],f,g0);
    or o2(y[1],f,g1);

    endmodule

    


`default_nettype wire
