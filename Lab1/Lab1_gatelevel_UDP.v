module Lab1_gatelevel_UDP(F,A,B,C,D);
output F;
input A,B,C,D;
wire w1,w2,w3,w4,w5,w6,w7,w8;
not g1(w1,B);
not g2(w2,D);
not g3(w3,A);
and g4(w4,C,D);
or g5(w5,w3,w4);
Lab1_UDP m1(w6,A,C,w1,w2);
and g6(F,w6,w5);
endmodule
