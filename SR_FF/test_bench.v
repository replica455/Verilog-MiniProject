`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:00:56 05/22/2022
// Design Name:   sr_ff
// Module Name:   C:/Users/bikas/OneDrive/Desktop/Verilog Projects/SR_flipflop/test_bench.v
// Project Name:  SR_flipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench;

	// Outputs
	wire q;
	wire qb;

	// Inputs
	reg s;
	reg r;
	reg clk;
	reg rst;
	// Instantiate the Unit Under Test (UUT)
	sr_ff uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		clk=1'b0;s=1'b0;r=1'b0;rst=1'b1;
	end
	always #5 clk=~clk;
   initial begin
	#10 rst=1'b0;
	#15 s=1'b1;r=1'b0;
	#15 s=1'b0;r=1'b0;
	#15 s=1'b0;r=1'b1;
	#15 s=1'b0;r=1'b0;
	#15 s=1'b1;r=1'b1;
	#15 $finish;
	end
endmodule

