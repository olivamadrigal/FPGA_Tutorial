`timescale 1ns / 1ps
module voting_rule(w,n,o,a,b,c,d);

//variables
input w,n,o; // weights are 2, 3, and 4 respectively
output a,b,c,d;
	assign a = w&n&o;
	assign b = ~w&~n&o | ~w&n&o | w&~n&o | w&n&~o;
	assign c = ~w&n&~o | ~w&n&o | w&~n&~o | w&~n&o;
	assign d = ~w&n&~o | ~w&n&o | w&n&~o | w&n&o;
endmodule
