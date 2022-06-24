`timescale 1ns / 1ps
module bcd_to_7seg(BCD, s0, s1, s2, s3, s4, s5, s6);
output reg s0, s1, s2, s3, s4, s5, s6;
input[3:0] BCD;

// switch 
always @ (BCD)
begin // BCD to 7-segment decoding (segments are active low), switch
	case (BCD)
	4'b0000: begin s0=0; s1=0; s2=0; s3=1; s4=0; s5=0; s6=0; end //necessary segment activation to display a 0
	4'b0001: begin s0=1; s1=0; s2=1; s3=1; s4=0; s5=1; s6=1; end // display a 1
	4'b0010: begin s0=0; s1=1; s2=0; s3=0; s4=0; s5=1; s6=0; end // display a 2
	4'b0011: begin s0=0; s1=0; s2=1; s3=0; s4=0; s5=1; s6=0; end // display a 3
	4'b0100: begin s0=1; s1=0; s2=1; s3=0; s4=0; s5=0; s6=1; end // display a 4
	4'b0101: begin s0=0; s1=0; s2=1; s3=0; s4=1; s5=0; s6=0; end // display a 5
	4'b0110: begin s0=0; s1=0; s2=0; s3=0; s4=1; s5=0; s6=0; end // display a 6
	4'b0111: begin s0=1; s1=0; s2=1; s3=1; s4=0; s5=1; s6=0; end // display a 
	4'b1000: begin s0=0; s1=0; s2=0; s3=0; s4=0; s5=0; s6=0; end // display a 8
	4'b1001: begin s0=0; s1=0; s2=1; s3=0; s4=0; s5=0; s6=0; end // display a 9
	default: begin s0=1; s1=1; s2=1; s3=1; s4=1; s5=1; s6=1; end // display nothing
endcase
end
endmodule

