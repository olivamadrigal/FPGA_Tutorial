`timescale 1ns / 1ps

module led_mux(clk, rst, LED0, LED1, LED2, LED3, LEDOUT, LEDSEL);
input clk, rst;
input [7:0] LED0,LED1,LED2,LED3;
output [3:0] LEDSEL;
output [7:0] LEDOUT;
reg [3:0] LEDSEL;
reg [7:0] LEDOUT;
reg [1:0] index;
always@(posedge clk)
begin
	if(rst)
			index = 0;
	else
			index = index + 2'd1;
end
always@(index,LED0,LED1,LED2,LED3)
begin
	case(index)
	0:	begin  // these are active low
		LEDSEL = 4'b1110;
		LEDOUT = LED0;
		end
	1: begin
		LEDSEL = 4'b1101;
		LEDOUT = LED1;
		end
	2: begin
		LEDSEL = 4'b1011;
		LEDOUT = LED2;
		end
	3:	begin
		LEDSEL = 4'b0111;
		LEDOUT = LED3;
		end
	default: begin
				LEDSEL = 0;
				LEDOUT = 0;
				end
	endcase
end

endmodule

