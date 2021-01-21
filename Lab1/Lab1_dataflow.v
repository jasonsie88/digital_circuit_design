module Lab1_dataflow(F,A,B,C,D);
output F;
input A,B,C,D;
wire w1,w2;
assign w1=((A&&(!D))||((!B)&&C));
assign w2=(C&&D)||(!A);
assign F=w1&&w2;
endmodule
