`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:39:22 04/21/2022
// Design Name:   ripple_carry_counter
// Module Name:   C:/Users/bikas/OneDrive/Desktop/New folder/RippleCarryCounter/ripple_carry_counter_test.v
// Project Name:  RippleCarryCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_carry_counter_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_counter uut (
		.q(q), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		reset = 1'b0;
		end
		
	always #5 clk=~clk; // time period of clock is 10 nsec
	
initial begin
	reset=1'b1;       // at time t=0 reset is made 1
	#15 reset=1'b0;   // at time t=0+15=15 the reset is made 0
	#180 reset=1'b1;  // at time t=0+15+180=195 the reset is made 1
	#10 reset=1'b0;   // at time t=0+15+180+10=205 the reset is made to 0 again
	#20 $finish;      // at time t=0+15+180+10+20=225 the simolation is terminated 
end      
endmodule

