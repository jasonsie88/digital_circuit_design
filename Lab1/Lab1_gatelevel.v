module Lab1_gatelevel(F,A,B,C,D);
output F;
input A,B,C,D;
wire w1,w2,w3,w4,w5,w6,w7,w8;
not g1(w1,D);
not g2(w2,B);
not g3(w3,A);
and g4(w4,A,w1);
and g5(w5,w2,C);
or g6(w6,w4,w5);
and g7(w7,C,D);
or g8(w8,w7,w3);
and g9(F,w8,w6);
endmodule
