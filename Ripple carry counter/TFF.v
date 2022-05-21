`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:41 04/21/2022 
// Design Name: 
// Module Name:    TFF 
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
module TFF(q,clk,reset);

output q;
input clk,reset;
wire d;
DFF dff0 (q,d,clk,reset);
not n1(d,q);
endmodule
