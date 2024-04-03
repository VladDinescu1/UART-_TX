`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:37:33
// Design Name: 
// Module Name: ct_bitsel1
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


module ct_bitsel1( output reg [3:0] out,
     input rst,clk,en  
    );
         
    always @(posedge clk)
     if(rst) out<=0;
     else if(en) out<=out+1;
          else out<=out;
endmodule
