`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:21 05/22/2022 
// Design Name: 
// Module Name:    jk_ff 
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
module jk_ff(j,k,rst,clk,q,qb);

input j,k,rst,clk;
output reg q=1'b0;
output reg qb=1'b1;

always @ (posedge clk)
 begin
if(rst)
  begin
  q=1'b0;qb=~q;
  end
else
   begin
case({j,k})
  2'd0:q=q;
  2'd1:q=1'b0;
  2'd2:q=1'b1;
  2'd3:q=~q;
  endcase
  qb=~q;
   end
 end
endmodule
