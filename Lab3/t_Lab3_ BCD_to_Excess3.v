module t_Lab3_BCD_to_Excess3;
 wire t_y_out1,t_y_out2;
 reg t_x_in, t_clock, t_reset;
 Lab3_BCD_to_Excess3_state_diagram M0(t_y_out1,t_x_in,t_clock,t_reset);
 Lab3_BCD_to_Excess3_structure M1(t_y_out2,t_x_in,t_clock,t_reset);
 initial #410 $finish;

 initial
 begin
  t_clock = 0;
  forever #5 t_clock = ~t_clock;
 end
 initial 
 fork
 t_reset = 0;
 #6 t_reset = 1;
 
 #10 t_x_in = 0;
 #20 t_x_in = 0;
 #30 t_x_in = 0;
 #40 t_x_in = 0;

 #50 t_x_in = 1;
 #60 t_x_in = 0;
 #70 t_x_in = 0;
 #80 t_x_in = 0;

 #90 t_x_in = 0;
 #100 t_x_in = 1;
 #110 t_x_in = 0;
 #120 t_x_in = 0;

 #130 t_x_in = 1;
 #140 t_x_in = 1;
 #150 t_x_in = 0;
 #160 t_x_in = 0;

 #170 t_x_in = 0;
 #180 t_x_in = 0;
 #190 t_x_in = 1;
 #200 t_x_in = 0;

 #210 t_x_in = 1;
 #220 t_x_in = 0;
 #230 t_x_in = 1;
 #240 t_x_in = 0;

 #250 t_x_in = 0;
 #260 t_x_in = 1;
 #270 t_x_in = 1;
 #280 t_x_in = 0;

 #290 t_x_in = 1;
 #300 t_x_in = 1;
 #310 t_x_in = 1;
 #320 t_x_in = 0;

 #330 t_x_in = 0;
 #340 t_x_in = 0;
 #350 t_x_in = 0;
 #360 t_x_in = 1;

 #370 t_x_in = 1;
 #380 t_x_in = 0;
 #390 t_x_in = 0;
 #400 t_x_in = 1;
 join
endmodule
