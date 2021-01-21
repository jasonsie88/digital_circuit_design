module Lab3_SR_Latch_gatelevel(output Q, NQ ,input S,R);
	nor #(2) g1(NQ,S,Q);
	nor #(2) g2(Q,R,NQ);
endmodule
