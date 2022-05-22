`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:31 05/22/2022 
// Design Name: 
// Module Name:    sr_ff 
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
module sr_ff(s,r,clk,rst,q,qb);

input s,r,clk,rst;
output reg q,qb;
always@(posedge clk)
begin
if(rst)
begin
q=1'b0;
qb=~q;
end
if(~s&&~r)
   q=q;
else if(~s&&r)
   q=1'b0;
else if(s&&~r)
   q=1'b1;
else
   q=1'bx;
qb=~q;
end
endmodule
