`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:10 04/21/2022 
// Design Name: 
// Module Name:    ripple_carry_counter 
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
module ripple_carry_counter(q,clk,reset);

output [3:0] q;
input clk,reset;

TFF tff0 (q[0],clk,reset);
TFF tff1 (q[1],q[0],reset);
TFF tff2 (q[2],q[1],reset);
TFF tff3 (q[3],q[2],reset);
endmodule
