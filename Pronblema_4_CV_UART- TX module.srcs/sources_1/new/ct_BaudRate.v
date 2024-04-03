`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:29:53
// Design Name: 
// Module Name: ct_BaudRate
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


module ct_BaudRate(
     output reg [19:0] out,
     input rst_asi,rst_sin,clk,en  
    );
    
    always @*
    if(rst_asi) out=0;
         
    always @(posedge clk)
     if(rst_sin) out<=0;
     else if(en) out<=out+1;
          else out<=out;
           
    
     
    
    
endmodule
