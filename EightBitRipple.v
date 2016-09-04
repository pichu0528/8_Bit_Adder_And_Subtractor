`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:56 07/14/2015 
// Design Name: 
// Module Name:    EightBitRipple 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module EightBitRipple(
    input [7:0] a,
    input [7:0] b,
    input op,
    output [7:0] sum,
    output overflow
    );
	 
	xor(b0, b[0], op);
	xor(b1, b[1], op);
	xor(b2, b[2], op);
	xor(b3, b[3], op);
	
   xor(b4, b[4], op);
	xor(b5, b[5], op);
	xor(b6, b[6], op);
	xor(b7, b[7], op);
	
	xor(overflow, ripple6, carry);     

	FullAdder s0( .A( a[0] ), .B(b0), .C( op ), .Sum( sum[0]), .Cout( ripple0 ) );
	FullAdder s1( .A( a[1] ), .B(b1), .C( ripple0 ), .Sum( sum[1]), .Cout( ripple1 ) );
	FullAdder s2( .A( a[2] ), .B(b2), .C( ripple1 ), .Sum( sum[2]), .Cout( ripple2 ) );
	FullAdder s3( .A( a[3] ), .B(b3), .C( ripple2 ), .Sum( sum[3]), .Cout( ripple3 ) );	
	
	FullAdder s4( .A( a[4] ), .B(b4), .C( ripple3 ), .Sum( sum[4]), .Cout( ripple4 ) );
	FullAdder s5( .A( a[5] ), .B(b5), .C( ripple4 ), .Sum( sum[5]), .Cout( ripple5 ) );
	FullAdder s6( .A( a[6] ), .B(b6), .C( ripple5 ), .Sum( sum[6]), .Cout( ripple6 ) );
	FullAdder s7( .A( a[7] ), .B(b7), .C( ripple6 ), .Sum( sum[7]), .Cout( carry ) );	





endmodule
