module Lab2_CLG_behavior(C,P,G,C0);
output [3:0] C;
input [3:0] P,G;
input C0;
reg [3:0] C;
always@(*)begin
 C[0]=G[0]|(P[0]&C0);
 C[1]=G[1]|(P[1]&G[0])|(P[1]&P[0]&C0);
 C[2]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C0);
 C[3]=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&C0);
end
endmodule
