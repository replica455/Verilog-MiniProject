`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:16 05/21/2022 
// Design Name: 
// Module Name:    SR_flipflop 
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
module D_flipflop(clk,rst,d,q,qb);
output reg q,qb;
input clk,rst,d;
	 initial 
	  begin
	   q=1'b0;
	   qb=1'b1;
	  end
	 always@(posedge clk)
	  begin
	   if(rst)
	     begin
	      q=1'b0;
	      qb=~q;
	    end
	  else
	   begin
	    q=d;
	    qb=~q;
	   end
	 end
endmodule



