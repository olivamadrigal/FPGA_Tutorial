`timescale 1ns / 1ps
module voting_machine_fpga(A,B,C,clk100MHz,rst,LEDOUT,LEDSEL);

// variables
input A, B, C, clk100MHz, rst;
output[7:0] LEDOUT;
output[3:0] LEDSEL;
supply1[7:0] vcc;
wire s0,s1,s2,s3,s4,s5,s6;
wire [3:0] i;
wire DONT_USE, clk_5KHz;

//assignments
assign s7 = 1'b1;

//instantiation and connect the sub modules
voting_rule u0(A,B,C,i[0],i[1],i[2],i[3]);
bcd_to_7seg u1({i[0],i[1],i[2],i[3]},s0,s1,s2,s3,s4,s5,s6);
led_mux     u2(clk_5KHz,rst,{s6,s5,s4,s3,s2,s1,s0},vcc,vcc,vcc,LEDOUT,LEDSEL);
clk_gen		u3(.clk100MHz(clk100MHz), .rst(rst),.clk_4sec(DONT_USE),.clk_5KHz(clk_5KHz));

endmodule






