`timescale 1ns / 1ps

module screen_selector(
 input clock,
 input switch1,
 input switch2,
 input switch3
 ); 
 
 
always @(posedge clock)
begin 
if (switch1 == 1)
begin
pixel_start x1(.clk_d(clock),.pixel_x,pixel_y,video_on,red,green,blue);
end
end
 
endmodule
