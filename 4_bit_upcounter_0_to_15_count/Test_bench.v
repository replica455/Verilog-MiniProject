`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:06:36 05/22/2022
// Design Name:   upcounter
// Module Name:   C:/Users/bikas/OneDrive/Desktop/Verilog Projects/Upcounter_4bit_0to15/Test_bench.v
// Project Name:  Upcounter_4bit_0to15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: upcounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_bench;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	upcounter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
   
	initial begin
	clk=1'b0;rst=1'b1;
	end
   always #5 clk=~clk;
	initial begin
	#7 rst=1'b0;
   #200  rst=1'b1;
	#15 $finish;
	end
 endmodule

