// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

module block1
(
	clock,
	IO11,
	IO12,
	IO2,
	IO3,
	IO5,
	IO6,
	IO8,
	IO10
);

input			clock;
output			IO11;
output			IO12;
output			IO2;
output			IO3;
output			IO5;
output			IO6;
output			IO8;
output			IO10;

reg	[15:0] q;


assign	IO2 = q[15];
assign	IO3 = q[14];
assign	IO5 = q[13];
assign	IO6 = q[12];
assign	IO8 = q[11];
assign	IO10 = q[10];
assign	IO11 = q[9];
assign	IO12 = q[8];

always @ (posedge clock)
	begin
		q <= q + 1;
	end

endmodule
