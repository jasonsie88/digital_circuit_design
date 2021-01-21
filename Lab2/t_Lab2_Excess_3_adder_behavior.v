module t_Lab2_Excess_3_adder;
wire [3:0] Sum;
wire  Cout;
reg [3:0] X,Y;
reg Cin;
Lab2_Excess_3_adder_behavior m0(Sum,Cout,X,Y,Cin);
initial
begin
    X=4'b0011;Y=4'b0011;Cin=0;
#50 X=4'b0011;Y=4'b0011;Cin=1;
#50 X=4'b1000;Y=4'b0111;Cin=0;
#50 X=4'b1000;Y=4'b0111;Cin=1;
#50 X=4'b1100;Y=4'b1100;Cin=0;
#50 X=4'b1100;Y=4'b1100;Cin=1;
end
endmodule
