module t_Lab2_CLG;
wire [3:0] C1;
wire [3:0] C2;
wire [3:0] C3;
reg [3:0] P,G;
reg C0;
Lab2_CLG_gate m1(C1,P,G,C0);
Lab2_CLG_dataflow m2(C2,P,G,C0);
Lab2_CLG_behavior m3(C3,P,G,C0);
initial
begin
P=4'b1101;G=4'b0101;C0=1'b0;
#50 P=4'b1100;G=4'b1000;C0=1'b1;
#50 P=4'b0101;G=4'b1101;C0=1'b0;
#50 P=4'b1000;G=4'b1100;C0=1'b1;
#50 P=4'b0101;G=4'b0101;C0=1'b0;
#50 P=4'b1011;G=4'b1011;C0=1'b1;
end
endmodule

