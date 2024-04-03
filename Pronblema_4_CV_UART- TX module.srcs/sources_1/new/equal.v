`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:25:06
// Design Name: 
// Module Name: equal
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module equal(
         output reg out,
         input[3:0] in0,in1);
         always @(*)
         if(in0==in1)
          out=1;
          else
          out=0;
endmodule
