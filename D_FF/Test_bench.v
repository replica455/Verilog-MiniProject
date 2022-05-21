`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:45:47 05/21/2022
// Design Name:   SR_flipflop
// Module Name:   C:/Users/bikas/OneDrive/Desktop/Verilog Projects/Verilog_FlipFlop/Test_bench.v
// Project Name:  Verilog_FlipFlop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_flipflop
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
	reg d;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	D_flipflop uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		d = 1;
	end
	
	always #5 clk=~clk;
	
	initial
	begin
	#15 rst=1'b0; //t=0+15
	#5 d=1'b1;    //t=0+15+5
	#10 d=1'b0;   //t=0+15+5+10
	#15 d=1'b1;    //t=0+15+5+10+15 
	#25 $finish;  //t=0+15+5+10+15+25
	end	
	
      
endmodule

