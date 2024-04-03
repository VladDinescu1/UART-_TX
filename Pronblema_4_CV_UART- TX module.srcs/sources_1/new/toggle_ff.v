`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:21:05
// Design Name: 
// Module Name: toggle_ff
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


module toggle_ff(
    output reg out,
    input toggle, clk,rst );


always@(posedge clk) begin
    if(rst) out<=0;
    else if (toggle)
    out <= ~out;
    else 
    out<=out;
end

endmodule

