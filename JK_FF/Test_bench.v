`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:35:39 05/22/2022
// Design Name:   jk_ff
// Module Name:   C:/Users/bikas/OneDrive/Desktop/Verilog Projects/JK_FF/Test_bench.v
// Project Name:  JK_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jk_ff
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
	reg j;
	reg k;
	reg rst;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	jk_ff uut (
		.j(j), 
		.k(k), 
		.rst(rst), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);
	
   initial begin
		clk=1'b0;j=1'b0;k=1'b0;rst=1'b1;
	end
	always #5 clk=~clk;
   initial begin
	#10 rst=1'b0;
	#15 j=1'b1;k=1'b0;
	#15 j=1'b0;k=1'b0;
	#15 j=1'b0;k=1'b1;
	#15 j=1'b0;k=1'b0;
	#15 j=1'b1;k=1'b1;
	#15 $finish;
	end

	
      
endmodule

