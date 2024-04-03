`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:51:08
// Design Name: 
// Module Name: MUXx
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


module MUXx(output reg out,
            input[10:0] in,
            input[3:0] sel);
            
     always @(*)
     case(sel)
     0:out=in[0];  
     1:out=in[1];
     2:out=in[2];
     3:out=in[3];
     4:out=in[4];
     5:out=in[5];
     6:out=in[6];
     7:out=in[7];
     8:out=in[8];
     9:out=in[9];
     10:out=in[10];
     endcase     
     
endmodule
