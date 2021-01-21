module t_Lab3_Neg_Edge_D_FF_gatelevel;
wire NQ,Q;
reg D,clock;
Lab3_Neg_Edge_D_FF_gatelevel ff(Q,NQ ,D,clock);
initial clock=1;
initial
	begin
	D=1'b0;
	#15 D=1'b1;
	#20 D=1'b0;
	#30 D=1'b1;
	#23 D=1'b0;
	#37 D=1'b1;
	#5 D=1'b0;
	end
always #10 clock=~clock;
endmodule