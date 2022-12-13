`timescale 1ns / 1ps


module pixel_over(
input clk_d,
input [9:0] pixel_x,
input [9:0] pixel_y,
input video_on,
output reg [3:0] red = 0,
output reg [3:0] green = 0,
output reg [3:0] blue = 0
);

always @(posedge clk_d) begin
//if ((pixel_x == 0 ) || (pixel_x == 639) || (pixel_y == 0) || (pixel_y == 479))
//    begin
//    red <= 4'hF;
//    green <= 4'hF;
//    blue <= 4'hF;
//    end
//else 
    begin
//    red <= video_on?(((pixel_x-100)*2 +(pixel_y-100)*2)<100)? 4'hF:4'h0:4'h0;
     red <= video_on?
     (pixel_x>190 && pixel_x<210 && pixel_y>180 && pixel_y<=200)||
     //
     (pixel_x>120 && pixel_x<170 && pixel_y>=200 && pixel_y<=220)||
     //210 
     (pixel_x>180 && pixel_x<220 && pixel_y>=200 && pixel_y<=220) ||
     (pixel_x>110 && pixel_x<230 && pixel_y>=220 && pixel_y<=270)||
     //210
     (pixel_x>120 && pixel_x<220 && pixel_y>=270 && pixel_y<=290) ||
     //220
     (pixel_x>130 && pixel_x<200 && pixel_y>=290 && pixel_y<=310) ||
     //230
     (pixel_x>150 && pixel_x<180 && pixel_y>=290 && pixel_y<310) ||
     //240
     //apple code above
     (pixel_x>402 && pixel_x<407 && pixel_y>=160 && pixel_y<=170) 
     
      ? 4'hF:4'h0:4'h0;
      
//    green <= video_on?((((pixel_x-300)*2 +(pixel_y-300)*2)<400) || 
    green <= video_on?(pixel_x>=140 && pixel_x<=190 && pixel_y>=180 && pixel_y<=200) ||
     (pixel_x>170 && pixel_x<180 && pixel_y>200 && pixel_y<220) 
     //apple code aoove
     ||
     //p of play
     (pixel_x>170 && pixel_x<190 && pixel_y>000  && pixel_y<100)||
     (pixel_x>190&& pixel_x<230 &&  pixel_y>000 && pixel_y<020)||
     (pixel_x>210&& pixel_x<230 &&  pixel_y>020 && pixel_y<040)||
     (pixel_x>190&& pixel_x<230 &&  pixel_y>040 && pixel_y<060)||
     
     //l of play
     (pixel_x>250 && pixel_x<270 && pixel_y>000  && pixel_y<100)||
     (pixel_x>270&& pixel_x<310 &&  pixel_y>070 && pixel_y<100) ||
     
     //a of play
     (pixel_x>330 && pixel_x<350 && pixel_y>000  && pixel_y<100)||
     (pixel_x>350 && pixel_x<370 && pixel_y>000  && pixel_y<020)||
     (pixel_x>350 && pixel_x<370 && pixel_y>040  && pixel_y<060)||
     (pixel_x>370 && pixel_x<390 && pixel_y>000  && pixel_y<100)||
     
     //y of play
//     (pixel_x>410 && pixel_x<425 && pixel_y>000  && pixel_y<030)||
//     (pixel_x>455& pixel_x<470 && pixel_y>000  && pixel_y<030)||
//     (pixel_x>410 && pixel_x<470 && pixel_y>030  && pixel_y<050)||
//     (pixel_x>430 && pixel_x<450 && pixel_y>050  && pixel_y<100)  
     
     
     
     
     //(pixel_x>170 && pixel_x<180 && pixel_y>200 && pixel_y<220)
     
     
     
     ? 4'hF:4'h0:4'h0;


    blue <= video_on? 
     (pixel_x>400 && pixel_x<410 && pixel_y>170 && pixel_y<180)||
    (pixel_x>390 && pixel_x<420 && pixel_y>=180 && pixel_y<=190) ||
    (pixel_x>370 && pixel_x<440 && pixel_y>=190 && pixel_y<=200)  ||
    (pixel_x>360 && pixel_x<450 && pixel_y>=200 && pixel_y<=210) ||
    (pixel_x>350 && pixel_x<460 && pixel_y>=210 && pixel_y<=220) ||
    (pixel_x>340 && pixel_x<470 && pixel_y>=220 && pixel_y<=270) ||
    
    (pixel_x>350 && pixel_x<460 && pixel_y>=270 && pixel_y<=280)||
    (pixel_x>360 && pixel_x<450 && pixel_y>=280 && pixel_y<=290)  ||
    (pixel_x>370 && pixel_x<440 && pixel_y>=290 && pixel_y<=300) ||
    (pixel_x>390 && pixel_x<420 && pixel_y>=300 && pixel_y<=310)      
    ? 4'hF:4'h0:4'h0;

    
   // blue<= 4'h0;
    end
 end
endmodule