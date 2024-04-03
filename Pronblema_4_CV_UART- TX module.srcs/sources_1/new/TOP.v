`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 10:53:41
// Design Name: 
// Module Name: TOP
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


module TOP(output out_tx,
           input clk,rst,start,
           input[7:0] datain,
           input[19:0] eq20b
    );
    
    wire and1_sau1,and2_sau1,sau1_toggle,toggle_out,eq4_and2,eq20,sau2_ctbit,eq42_si,out_crccalc,eq_load,si_load,mux_sau;
    wire [3:0] outctbit;
    wire[19:0] out_ctbd;
    wire[10:0] reg_mux;
    
   and and1(and1_sau1,start,~toggle_out) ;
   
   and and2(and2_sau1,eq4_and2,eq20);
   
   or or1(sau1_toggle,and1_sau1,and2_sau1);
   
   toggle_ff tog(.out(toggle_out),
                 .toggle(sau1_toggle),
                 .clk(clk),
                 .rst(rst));
                 
   ct_BaudRate bd1(.out(out_ctbd),
                   .rst_asi(rst),
                   .rst_sin(eq20),
                   .clk(clk),
                   .en(toggle_out));
                   
   equal20b equ20(.out(eq20),
                  .in0(eq20b),
                  .in1(out_ctbd));
                  
   equal equal42(.out(eq42_si),
                 .in0(out_ctbd[3:0]),
                 .in1(4'b0));
                 
   or sau2(sau2_ctbit,and2_sau1,rst);
   
   ct_bitsel1 ctbit(.out(outctbit),
                    .rst(sau2_ctbit),
                    .clk(clk),
                    .en(eq20));
   
   equal equal41(.out(eq4_and2),
                 .in0(4'd10),
                 .in1(outctbit));
   
   crc_calc crc1(.out(out_crccalc),
                 .in(datain));
   
   equal equal43(.out(eq_load),
                 .in0(4'b0),
                 .in1(outctbit));
   
   and and3(si_load,eq_load,eq42_si,start);
   
   reg0 reg1(.out(reg_mux),
             .in({1'b1,out_crccalc,datain,1'b0}),
             .load(si_load),
             .clk(clk),
             .rst(rst));
   
   MUXx mux1(.out(mux_sau),
             .in(reg_mux),
             .sel(outctbit));
   
   or or3(out_tx,~toggle_out,mux_sau);
    
   
       
endmodule
