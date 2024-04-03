`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 12:24:33
// Design Name: 
// Module Name: sim
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


module sim();

reg start_t,clk_t,rst_t;
reg[7:0] datain_t;
reg[19:0] eq20_t;
wire out_tx_t;
TOP DUT(.out_tx(out_tx_t),
        .clk(clk_t),
        .rst(rst_t),
        .start(start_t),
        .datain(datain_t),
        .eq20b(eq20_t));
initial begin
    clk_t = 0;
    forever #5 clk_t = ~ clk_t;
end
initial begin 
    start_t=0;
    eq20_t=20'd2;
    datain_t=8'b1010_1010;
    rst_t=1;
    #100 rst_t=0;
    #30 start_t=1;
    #10 start_t=0;
    #100 $stop();
    
end
endmodule
