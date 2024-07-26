module lnand(
		input a,b,
		output y
);

	assign y = ~(a&b);

endmodule
