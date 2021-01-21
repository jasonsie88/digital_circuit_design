module Lab2_Excess_3_adder_behavior(Sum,Cout,A,B,Cin);
output[3:0] Sum;
output Cout;
input [3:0] A,B;
input Cin;
reg [4:0] Sum1;
reg [3:0] Sum;
reg Cout;
always@(*)begin
Sum1=A+B+Cin;
Cout=Sum1[4];
if(Cout==1)
begin
Sum1=Sum1+3;
Sum=Sum1[3:0];
end
else if(Cout==0)
begin
Sum1=Sum1-3;
Sum=Sum1[3:0];
end
end
endmodule
