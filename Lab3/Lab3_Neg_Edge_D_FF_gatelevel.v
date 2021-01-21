module Lab3_Neg_Edge_D_FF_gatelevel (output  Q, NQ, input D, clock);
	reg w1,w2,w3,w4;
	always@(clock)begin
	 		#2; w4=~(w3|D);
			#2; w3=~(clock|w2|w4);
			#2; w2=~(clock|w1);
			#2; w1=~(D|w2);
	end
			Lab3_SR_Latch_gatelevel l1(Q,NQ,w3,w2);	
		
endmodule
