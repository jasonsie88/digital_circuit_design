module Lab3_BCD_to_Excess3_structure(output  z,input x,clock,reset);
wire A,B,C,D_A,D_B,D_C;

assign D_A=((!A)&B)|(x&(!A)&C)|(A&(!B)&(!C));
assign D_B=(x&(!B)&(!C))|((!x)&(!A)&(!B)&C);
assign D_C=(B&C)|((!x)&(!A)&C)|((!x)&(!B)&(!C));
assign z=(x&B)|(A&B)|((!x)&(!B)&(!C))|((!x)&(!A)&(!B))|(x&A&C);
D_ff_AR a(A,D_A,clock,reset);
D_ff_AR b(B,D_B,clock,reset);
D_ff_AR c(C,D_C,clock,reset);
endmodule
