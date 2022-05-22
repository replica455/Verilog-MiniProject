`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:18 05/22/2022 
// Design Name: 
// Module Name:    upcounter 
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
module upcounter(clk,rst,q);

output [3:0] q ;
reg [3:0] q = 4'b0;
input clk,rst;

always @(posedge clk)
begin
 if(rst)
   q<=4'b0;
 else
   q<=q+1;
end

endmodule
