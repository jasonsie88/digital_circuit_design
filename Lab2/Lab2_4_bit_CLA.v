module Lab2_4_bit_CLA(Sum,Cout,A,B,Cin);
output [3:0] Sum;
output Cout;
input [3:0] A,B;
input Cin;
wire [3:0] P,G,C;
assign P[3]=A[3]^B[3];
assign P[2]=A[2]^B[2];
assign P[1]=A[1]^B[1];
assign P[0]=A[0]^B[0];
assign G[3]=A[3]&B[3];
assign G[2]=A[2]&B[2];
assign G[1]=A[1]&B[1];
assign G[0]=A[0]&B[0];
Lab2_CLG_dataflow m1(C,P,G,Cin);
assign Sum[0]=P[0]^Cin;
assign Sum[1]=P[1]^C[0];
assign Sum[2]=P[2]^C[1];
assign Sum[3]=P[3]^C[2];
assign Cout=C[3];
endmodule
