`timescale 1ns / 1ps

module pixel_gen(
input clk_d,
input [9:0] pixel_x,
input [9:0] pixel_y,
input video_on,

output reg [3:0] red = 0,
output reg [3:0] green = 0,
output reg [3:0] blue = 0,
input animate,
input switch1,
input switch2,
input switch3,
input switchup,
input switchdown,
input switchleft,
input switchright
    );
    
 reg [4:0]div =0; 
 reg [9:0] y_loc1 = 0;
 reg [9:0] y_loc2 = 0;
 reg [9:0] y_loc3 = 0;
 reg [9:0] y_loc4 = 0;
 reg [9:0] cy = 0;
 
 reg [9:0] x_loc1 = 0;
 reg [9:0] x_loc2 = 0;
 reg [9:0] x_loc3 = 0;
 reg [9:0] x_loc4 = 0;
 reg [9:0] cx = 0;
 
 reg lives =3;
 reg state3 =1;
 reg state2 = 0;
 reg state1 = 0;
 reg state0 = 0;

 //reg [9:0] liv 1 = 0;
 //reg [9:0] x_loc2 = 0;
 //reg [9:0] x_loc3 = 0;
always @ (posedge animate)
begin 
div<= div+4;
end

always @ (posedge div[3])
begin
 if (switchdown && cy<480)
 cy <= cy+5;
 //else
 //cy=cy-5;
 
 if (switchup && cy>0)
 cy <= cy-5;
 //else 
 //cy=cy+5; 
 
 
 if (switchright && cx<640)
 cx <= cx+5;
 //else 
 //cx=cx-5; 
 
 if (switchleft && cx>0)
 cx <= cx-5;
 //else 
 //cx=cx+5; 
 
  
    
    if(y_loc1 ==480 || y_loc2 == 480 ||y_loc3 == 480 || y_loc4 == 480)
    begin 
        y_loc1 <= 50;
        y_loc2 <= 50;
        y_loc3 <= 50;
        y_loc4 <= 50;
        
    end 
   
    else 
        y_loc1<= y_loc1 + 10;
        y_loc2 <= y_loc2 + 10;
        y_loc3 <= y_loc3 + 15;
        y_loc4 <= y_loc4 + 10;
        
     if(x_loc1 == 640 || x_loc2 == 640 || x_loc3 == 640|| x_loc4 == 200)
      begin
        x_loc1 <= 0;
        x_loc2 <=0;
        x_loc3 <=0;
        x_loc4 <=60;
        
    
        end 
      else 
        x_loc1<= x_loc1 + 5;
        x_loc2<= x_loc2 + 2;
        x_loc3 <= x_loc3 + 5;
        x_loc4 <= x_loc4 + 2;
end
    
always @(posedge clk_d)
 begin

// collision
if (cx>=x_loc4+360 && cx<= x_loc4+440 && cy>=y_loc4+60 && cy<= y_loc4+70 && lives >0)begin

        if(lives ==3)
        begin
            lives<= lives -1;
            state3 <=1;
            end
        else if(lives ==2)
        begin
            lives <=lives-1;
            state2 <=1;
            state3<=0;
        end
        else if (lives == 1)
        begin 
            lives <=lives-1;
            state2 <=0;
            state1<=1;
            state3<=0;
            end
        else if (lives ==0)
        begin 
            state2 <=0;        
            state1<=0;
            state3<=0;
            end
//        cx<= cx-100;
//        cy<= cy-100;
 end

if(switch1)
    state0<=0;
    lives<=3;
    
    if (switch1)
    begin
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
     (pixel_x>410 && pixel_x<425 && pixel_y>000  && pixel_y<030)||
     (pixel_x>455& pixel_x<470 && pixel_y>000  && pixel_y<030)||
     (pixel_x>410 && pixel_x<470 && pixel_y>030  && pixel_y<050)||
     (pixel_x>430 && pixel_x<450 && pixel_y>050  && pixel_y<100)  
    
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

    end
    
    if (switch2 && state3)
    begin
    //apple code 1
     red <= video_on?
//   (pixel_x>=160 && pixel_x<=170 && pixel_y>=180 && pixel_y<=190)||
     (pixel_x>=80+x_loc1 && pixel_x<=90+x_loc1 && pixel_y>=y_loc1 && pixel_y<=y_loc1+10)||
     
     (pixel_x>40+x_loc1 && pixel_x<70+x_loc1 && pixel_y>=y_loc1+10 && pixel_y<=y_loc1+20)||
     (pixel_x>80+x_loc1 && pixel_x<100+x_loc1 && pixel_y>=y_loc1+10 && pixel_y<=y_loc1+20) ||
     
     (pixel_x>30+x_loc1 && pixel_x<110+x_loc1 && pixel_y>=y_loc1+20 && pixel_y<=y_loc1+60)||
     
     (pixel_x>40+x_loc1 && pixel_x<100+x_loc1 && pixel_y>=y_loc1+60 && pixel_y<=y_loc1+70) ||
     
     //apple 2
     (pixel_x>=260+x_loc2 && pixel_x<=270+x_loc2 && pixel_y>=y_loc2 && pixel_y<=y_loc2+10)||
     
     (pixel_x>220+x_loc2 && pixel_x<250+x_loc2 && pixel_y>=y_loc2+10 && pixel_y<=y_loc2+20)||
     (pixel_x>260+x_loc2 && pixel_x<280+x_loc2 && pixel_y>=y_loc2+10 && pixel_y<=y_loc2+20) ||
     
     (pixel_x>210+x_loc2 && pixel_x<290+x_loc2 && pixel_y>=y_loc2+20 && pixel_y<=y_loc2+60)||
     
     (pixel_x>220+x_loc2 && pixel_x<280+x_loc2 && pixel_y>=y_loc2+60 && pixel_y<=y_loc2+70) ||
     
     //apple 3
     (pixel_x>=560+x_loc3 && pixel_x<=570+x_loc3 && pixel_y>=y_loc3 && pixel_y<=y_loc3+10)||
     
     (pixel_x>520+x_loc3 && pixel_x<550+x_loc3 && pixel_y>=y_loc3+10 && pixel_y<=y_loc3+20)||
     (pixel_x>560+x_loc3 && pixel_x<580+x_loc3 && pixel_y>=y_loc3+10 && pixel_y<=y_loc3+20) ||
     
     (pixel_x>510+x_loc3 && pixel_x<590+x_loc3 && pixel_y>=y_loc3+20 && pixel_y<=y_loc3+60)||
     
     (pixel_x>520+x_loc3 && pixel_x<580+x_loc3 && pixel_y>=y_loc3+60 && pixel_y<=y_loc3+70) ||
     
     //for bomb 
     (pixel_x>400+x_loc4 && pixel_x<405+x_loc4 && pixel_y>=y_loc4 && pixel_y<=y_loc4+10)||
       //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14)
     
      ? 4'hF:4'h0:4'h0;
     
    //apple leaf 1
    green <= video_on?
    (pixel_x>=40+20+x_loc1 && pixel_x<=60+20+x_loc1 && pixel_y>=y_loc1 && pixel_y<=y_loc1+10) ||
     (pixel_x>=50+20+x_loc1 && pixel_x<=60+20+x_loc1 && pixel_y>y_loc1+10 && pixel_y<y_loc1+20)
    ||
    
    //apple leaf 2
    (pixel_x>=240+x_loc2 && pixel_x<=260+x_loc2 && pixel_y>=y_loc2 && pixel_y<=y_loc2+10) ||
     (pixel_x>=250+x_loc2 && pixel_x<=260+x_loc2 && pixel_y>y_loc2+10 && pixel_y<y_loc2+20) ||
     
     //apple leaf 3
    (pixel_x>=540+x_loc3 && pixel_x<=560+x_loc3 && pixel_y>=y_loc3 && pixel_y<=y_loc3+10) ||
     (pixel_x>=550+x_loc3 && pixel_x<=560+x_loc3 && pixel_y>y_loc3+10 && pixel_y<y_loc3+20)||
      //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14) ||
      
     //lives 
         
      ((pixel_x- 560)**2+ (pixel_y- 10)**2 < 100)||
    ((pixel_x-595 )**2+ (pixel_y- 10)**2 < 100)||
    ((pixel_x- 630 )**2+ (pixel_y- 10)**2 < 100) ? 4'hF:4'h0:4'h0;
  
    
    
    blue <= video_on?
    //bomb
    (pixel_x>40+x_loc4 && pixel_x<45+x_loc4 && pixel_y>y_loc4+10 && pixel_y<y_loc4+20)||
    (pixel_x>30+x_loc4 && pixel_x<50+x_loc4 && pixel_y>=y_loc4+20 && pixel_y<=y_loc4+30) ||
    (pixel_x>10+x_loc4 && pixel_x<70+x_loc4 && pixel_y>=y_loc4+30 && pixel_y<=y_loc4+40)  ||
    (pixel_x>x_loc4 && pixel_x<80+x_loc4 && pixel_y>=y_loc4+40 && pixel_y<=y_loc4+50) ||
    (pixel_x>10+x_loc4 && pixel_x<70+x_loc4 && pixel_y>=y_loc4+50 && pixel_y<=y_loc4+60) ||
    (pixel_x>30+x_loc4 && pixel_x<50+x_loc4 && pixel_y>=y_loc4+60 && pixel_y<=y_loc4+70)||
      //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14)      
    ? 4'hF:4'h0:4'h0;
    end 
    
    if (switch2 && state2)
    begin
    //apple code 1
     red <= video_on?
//   (pixel_x>=160 && pixel_x<=170 && pixel_y>=180 && pixel_y<=190)||
     (pixel_x>=80+x_loc1 && pixel_x<=90+x_loc1 && pixel_y>=y_loc1 && pixel_y<=y_loc1+10)||
     
     (pixel_x>40+x_loc1 && pixel_x<70+x_loc1 && pixel_y>=y_loc1+10 && pixel_y<=y_loc1+20)||
     (pixel_x>80+x_loc1 && pixel_x<100+x_loc1 && pixel_y>=y_loc1+10 && pixel_y<=y_loc1+20) ||
     
     (pixel_x>30+x_loc1 && pixel_x<110+x_loc1 && pixel_y>=y_loc1+20 && pixel_y<=y_loc1+60)||
     
     (pixel_x>40+x_loc1 && pixel_x<100+x_loc1 && pixel_y>=y_loc1+60 && pixel_y<=y_loc1+70) ||
     
     //apple 2
     (pixel_x>=260+x_loc2 && pixel_x<=270+x_loc2 && pixel_y>=y_loc2 && pixel_y<=y_loc2+10)||
     
     (pixel_x>220+x_loc2 && pixel_x<250+x_loc2 && pixel_y>=y_loc2+10 && pixel_y<=y_loc2+20)||
     (pixel_x>260+x_loc2 && pixel_x<280+x_loc2 && pixel_y>=y_loc2+10 && pixel_y<=y_loc2+20) ||
     
     (pixel_x>210+x_loc2 && pixel_x<290+x_loc2 && pixel_y>=y_loc2+20 && pixel_y<=y_loc2+60)||
     
     (pixel_x>220+x_loc2 && pixel_x<280+x_loc2 && pixel_y>=y_loc2+60 && pixel_y<=y_loc2+70) ||
     
     //apple 3
     (pixel_x>=560+x_loc3 && pixel_x<=570+x_loc3 && pixel_y>=y_loc3 && pixel_y<=y_loc3+10)||
     
     (pixel_x>520+x_loc3 && pixel_x<550+x_loc3 && pixel_y>=y_loc3+10 && pixel_y<=y_loc3+20)||
     (pixel_x>560+x_loc3 && pixel_x<580+x_loc3 && pixel_y>=y_loc3+10 && pixel_y<=y_loc3+20) ||
     
     (pixel_x>510+x_loc3 && pixel_x<590+x_loc3 && pixel_y>=y_loc3+20 && pixel_y<=y_loc3+60)||
     
     (pixel_x>520+x_loc3 && pixel_x<580+x_loc3 && pixel_y>=y_loc3+60 && pixel_y<=y_loc3+70) ||
     
     //for bomb 
     (pixel_x>400+x_loc4 && pixel_x<405+x_loc4 && pixel_y>=y_loc4 && pixel_y<=y_loc4+10)||
       //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14)
     
      ? 4'hF:4'h0:4'h0;
     
    //apple leaf 1
    green <= video_on?
    (pixel_x>=40+20+x_loc1 && pixel_x<=60+20+x_loc1 && pixel_y>=y_loc1 && pixel_y<=y_loc1+10) ||
     (pixel_x>=50+20+x_loc1 && pixel_x<=60+20+x_loc1 && pixel_y>y_loc1+10 && pixel_y<y_loc1+20)
    ||
    
    //apple leaf 2
    (pixel_x>=240+x_loc2 && pixel_x<=260+x_loc2 && pixel_y>=y_loc2 && pixel_y<=y_loc2+10) ||
     (pixel_x>=250+x_loc2 && pixel_x<=260+x_loc2 && pixel_y>y_loc2+10 && pixel_y<y_loc2+20) ||
     
     //apple leaf 3
    (pixel_x>=540+x_loc3 && pixel_x<=560+x_loc3 && pixel_y>=y_loc3 && pixel_y<=y_loc3+10) ||
     (pixel_x>=550+x_loc3 && pixel_x<=560+x_loc3 && pixel_y>y_loc3+10 && pixel_y<y_loc3+20)||
      //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14) ||
      
     //lives 
         
      //2 lives
    ((pixel_x-595 )**2+ (pixel_y- 10)**2 < 100)||
    ((pixel_x- 630 )**2+ (pixel_y- 10)**2 < 100) ? 4'hF:4'h0:4'h0;
  
    blue <= video_on?
    //bomb
    (pixel_x>40+x_loc4 && pixel_x<45+x_loc4 && pixel_y>y_loc4+10 && pixel_y<y_loc4+20)||
    (pixel_x>30+x_loc4 && pixel_x<50+x_loc4 && pixel_y>=y_loc4+20 && pixel_y<=y_loc4+30) ||
    (pixel_x>10+x_loc4 && pixel_x<70+x_loc4 && pixel_y>=y_loc4+30 && pixel_y<=y_loc4+40)  ||
    (pixel_x>x_loc4 && pixel_x<80+x_loc4 && pixel_y>=y_loc4+40 && pixel_y<=y_loc4+50) ||
    (pixel_x>10+x_loc4 && pixel_x<70+x_loc4 && pixel_y>=y_loc4+50 && pixel_y<=y_loc4+60) ||
    (pixel_x>30+x_loc4 && pixel_x<50+x_loc4 && pixel_y>=y_loc4+60 && pixel_y<=y_loc4+70)||
      //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14)      
    ? 4'hF:4'h0:4'h0;
    end 
    
    if (switch2 && state1)
    begin
    //apple code 1
     red <= video_on?
//   (pixel_x>=160 && pixel_x<=170 && pixel_y>=180 && pixel_y<=190)||
     (pixel_x>=80+x_loc1 && pixel_x<=90+x_loc1 && pixel_y>=y_loc1 && pixel_y<=y_loc1+10)||
     
     (pixel_x>40+x_loc1 && pixel_x<70+x_loc1 && pixel_y>=y_loc1+10 && pixel_y<=y_loc1+20)||
     (pixel_x>80+x_loc1 && pixel_x<100+x_loc1 && pixel_y>=y_loc1+10 && pixel_y<=y_loc1+20) ||
     
     (pixel_x>30+x_loc1 && pixel_x<110+x_loc1 && pixel_y>=y_loc1+20 && pixel_y<=y_loc1+60)||
     
     (pixel_x>40+x_loc1 && pixel_x<100+x_loc1 && pixel_y>=y_loc1+60 && pixel_y<=y_loc1+70) ||
     
     //apple 2
     (pixel_x>=260+x_loc2 && pixel_x<=270+x_loc2 && pixel_y>=y_loc2 && pixel_y<=y_loc2+10)||
     
     (pixel_x>220+x_loc2 && pixel_x<250+x_loc2 && pixel_y>=y_loc2+10 && pixel_y<=y_loc2+20)||
     (pixel_x>260+x_loc2 && pixel_x<280+x_loc2 && pixel_y>=y_loc2+10 && pixel_y<=y_loc2+20) ||
     
     (pixel_x>210+x_loc2 && pixel_x<290+x_loc2 && pixel_y>=y_loc2+20 && pixel_y<=y_loc2+60)||
     
     (pixel_x>220+x_loc2 && pixel_x<280+x_loc2 && pixel_y>=y_loc2+60 && pixel_y<=y_loc2+70) ||
     
     //apple 3
     (pixel_x>=560+x_loc3 && pixel_x<=570+x_loc3 && pixel_y>=y_loc3 && pixel_y<=y_loc3+10)||
     
     (pixel_x>520+x_loc3 && pixel_x<550+x_loc3 && pixel_y>=y_loc3+10 && pixel_y<=y_loc3+20)||
     (pixel_x>560+x_loc3 && pixel_x<580+x_loc3 && pixel_y>=y_loc3+10 && pixel_y<=y_loc3+20) ||
     
     (pixel_x>510+x_loc3 && pixel_x<590+x_loc3 && pixel_y>=y_loc3+20 && pixel_y<=y_loc3+60)||
     
     (pixel_x>520+x_loc3 && pixel_x<580+x_loc3 && pixel_y>=y_loc3+60 && pixel_y<=y_loc3+70) ||
     
     //for bomb 
     (pixel_x>400+x_loc4 && pixel_x<405+x_loc4 && pixel_y>=y_loc4 && pixel_y<=y_loc4+10)||
       //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14)
     
      ? 4'hF:4'h0:4'h0;
     
    //apple leaf 1
    green <= video_on?
    (pixel_x>=40+20+x_loc1 && pixel_x<=60+20+x_loc1 && pixel_y>=y_loc1 && pixel_y<=y_loc1+10) ||
     (pixel_x>=50+20+x_loc1 && pixel_x<=60+20+x_loc1 && pixel_y>y_loc1+10 && pixel_y<y_loc1+20)
    ||
    
    //apple leaf 2
    (pixel_x>=240+x_loc2 && pixel_x<=260+x_loc2 && pixel_y>=y_loc2 && pixel_y<=y_loc2+10) ||
     (pixel_x>=250+x_loc2 && pixel_x<=260+x_loc2 && pixel_y>y_loc2+10 && pixel_y<y_loc2+20) ||
     
     //apple leaf 3
    (pixel_x>=540+x_loc3 && pixel_x<=560+x_loc3 && pixel_y>=y_loc3 && pixel_y<=y_loc3+10) ||
     (pixel_x>=550+x_loc3 && pixel_x<=560+x_loc3 && pixel_y>y_loc3+10 && pixel_y<y_loc3+20)||
      //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14) ||
      
     //lives 
         
      //1 lives
    ((pixel_x- 630 )**2+ (pixel_y- 10)**2 < 100) ? 4'hF:4'h0:4'h0;
  
   
    blue <= video_on?
    //bomb
    (pixel_x>40+x_loc4 && pixel_x<45+x_loc4 && pixel_y>y_loc4+10 && pixel_y<y_loc4+20)||
    (pixel_x>30+x_loc4 && pixel_x<50+x_loc4 && pixel_y>=y_loc4+20 && pixel_y<=y_loc4+30) ||
    (pixel_x>10+x_loc4 && pixel_x<70+x_loc4 && pixel_y>=y_loc4+30 && pixel_y<=y_loc4+40)  ||
    (pixel_x>x_loc4 && pixel_x<80+x_loc4 && pixel_y>=y_loc4+40 && pixel_y<=y_loc4+50) ||
    (pixel_x>10+x_loc4 && pixel_x<70+x_loc4 && pixel_y>=y_loc4+50 && pixel_y<=y_loc4+60) ||
    (pixel_x>30+x_loc4 && pixel_x<50+x_loc4 && pixel_y>=y_loc4+60 && pixel_y<=y_loc4+70)||
      //cursor
     ((pixel_x- cx)**2+ (pixel_y- cy)**2 <14)      
    ? 4'hF:4'h0:4'h0;
    end 
    
    
if (lives==0)
  //g for game
begin 
 red <= video_on?
(pixel_x>=20 && pixel_x<=150 && pixel_y>=20 && pixel_y<=60)||

(pixel_x>=150 && pixel_x<=170 && pixel_y>=20 && pixel_y<=70)||

(pixel_x>=20 && pixel_x<=60 && pixel_y>=60 && pixel_y<=200)||

(pixel_x>= 60 && pixel_x<=130 && pixel_y>=160 && pixel_y<=200)||

(pixel_x>=130 && pixel_x<=170 && pixel_y>=160 && pixel_y<=220)||


//a for game


(pixel_x>=180 && pixel_x<=220 && pixel_y>=20 && pixel_y<=220)||

(pixel_x>=220 && pixel_x<=260 && pixel_y>=20 && pixel_y<=60)||

(pixel_x>=260 && pixel_x<=300 && pixel_y>=20 && pixel_y<=220)||

(pixel_x>=220 && pixel_x<=260 && pixel_y>=100 && pixel_y<=140)||


//m for game

(pixel_x>=320 && pixel_x<=360 && pixel_y>=20 && pixel_y<=220)||

(pixel_x>=360 && pixel_x<=400 && pixel_y>=20 && pixel_y<=60)||

(pixel_x>=400 && pixel_x<=440 && pixel_y>=60 && pixel_y<=100)||

(pixel_x>=440 && pixel_x<=480 && pixel_y>=20 && pixel_y<=60)||

(pixel_x>=480 && pixel_x<=520 && pixel_y>=20 && pixel_y<=220)||




//e for game


(pixel_x>=540 && pixel_x<=580 && pixel_y>=20 && pixel_y<=220)||

(pixel_x>=580 && pixel_x<=630 && pixel_y>=20 && pixel_y<=70)||

(pixel_x>=580 && pixel_x<=630 && pixel_y>=95 && pixel_y<=145)||

(pixel_x>=580 && pixel_x<=630 && pixel_y>=170 && pixel_y<=220)||

//o for over

(pixel_x>=20 && pixel_x<=60 && pixel_y>=240 && pixel_y<=440)||

(pixel_x>=60 && pixel_x<=100 && pixel_y>=240 && pixel_y<=280)||

(pixel_x>=60 && pixel_x<=100 && pixel_y>=400 && pixel_y<=440)||

(pixel_x>=100 && pixel_x<=140 && pixel_y>=240 && pixel_y<=440)||

//v for over

(pixel_x>=160 && pixel_x<=200 && pixel_y>=240 && pixel_y<=400)||

(pixel_x>=200 && pixel_x<=240 && pixel_y>=400 && pixel_y<=440)||

(pixel_x>=240 && pixel_x<=280 && pixel_y>=240 && pixel_y<=400)||


//e for over

(pixel_x>=540-250 && pixel_x<=580-250 && pixel_y>=20+220 && pixel_y<=220+220)||

(pixel_x>=580-250 && pixel_x<=630-250 && pixel_y>=20+220 && pixel_y<=70+220)||

(pixel_x>=580-250 && pixel_x<=630-250 && pixel_y>=95+220 && pixel_y<=145+220)||

(pixel_x>=580-250 && pixel_x<=630-250 && pixel_y>=170+220 && pixel_y<=220+220)||

//r for over

(pixel_x>=390 && pixel_x<=430 && pixel_y>=240 && pixel_y<=440)||

(pixel_x>=430 && pixel_x<=550 && pixel_y>=20+220 && pixel_y<=280)||

(pixel_x>=510 && pixel_x<=550 && pixel_y>=60+220 && pixel_y<=320)||

(pixel_x>=430 && pixel_x<=550 && pixel_y>=320 && pixel_y<=360)||

(pixel_x>=430 && pixel_x<=470 && pixel_y>=360 && pixel_y<=400)||

(pixel_x>=470 && pixel_x<=510 && pixel_y>=400 && pixel_y<=440)
? 4'hF:4'h0:4'h0;
    end
    

 
 end 
 
endmodule
