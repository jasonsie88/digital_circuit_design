module Lab2_BLG(B,P,G,B0);
output [3:0] B;
input [3:0] P,G;
input B0;
assign B[0]=G[0]|(P[0]&B0);
assign B[1]=G[1]|(P[1]&G[0])|(P[1]&P[0]&B0);
assign B[2]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&B0);
assign B[3]=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&B0);
endmodule

