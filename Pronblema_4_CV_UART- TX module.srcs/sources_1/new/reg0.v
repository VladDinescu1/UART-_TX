`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:44:22
// Design Name: 
// Module Name: reg0
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


module reg0( output reg [10:0] out,
             input[10:0] in,
             input load, clk, rst );
             
    always@(posedge clk)
    if(rst) out<=0;
    else if(load) out<=in;
         else  out<=out;
    
    
endmodule
