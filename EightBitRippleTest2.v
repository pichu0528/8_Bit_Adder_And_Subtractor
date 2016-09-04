`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:18:55 07/14/2015
// Design Name:   EightBitRipple
// Module Name:   C:/Users/pichu/Desktop/lab2/lab2/EightBitRippleTest2.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EightBitRipple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EightBitRippleTest2;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg op;

	// Outputs
	wire [7:0] sum;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	EightBitRipple uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.sum(sum), 
		.overflow(overflow)
	);

	initial begin

        
		// Add stimulus here
		// case1
		a = 8'b00000001;
		b = 8'b00000001;
		op = 0;
		
		// case2
		#100;
		a = 8'b00000001;
		b = 8'b11111111;
		op = 0;
		
		// case3
		#100;
		a = 8'b11111111;
		b = 8'b00000001;
		op = 0;
		
		// case4
		#100;
		a = 8'b11111111;
		b = 8'b11111111;
		op = 0;
		
		// case5
		#100;
		a = 8'b00000001;
		b = 8'b00000001;
		op = 1;
		
		// case6
		#100;
		a = 8'b00000001;
		b = 8'b11111111;
		op = 1;
		
		// case7
		#100;
		a = 8'b11111111;
		b = 8'b00000001;
		op = 1;
		
		// case8
		#100;
		a = 8'b11111111;
		b = 8'b11111111;
		op = 1;
		
		// case9
		#100;
		a = 8'b01111111;
		b = 8'b01111111;
		op = 0;
		
		// case10
		#100;
		a = 8'b10000000;
		b = 8'b10000000;
		op = 0;

	end
      
endmodule

