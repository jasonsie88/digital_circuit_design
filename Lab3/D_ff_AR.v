module D_ff_AR (output reg Q,input D, clock, rst); 

	always @ (posedge clock, negedge rst)begin
		if (!rst) 
			Q <= 1'b0;
		else 
			Q <= D;
end
endmodule
