`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 02:09:33 PM
// Design Name: 
// Module Name: vga_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_top(
input clk,
input switch1,
input switch2,
input switch3,
input switchup,
input switchright,
input switchdown,
input switchleft,

output h_sync,v_sync,
output [3:0] red,green,blue
    );
    wire animate; // active after every frame for one tick
    
    wire clk_d, v_trig, video_on;
    wire [9:0] h_count;
    wire[9:0] v_count;
    wire[9:0] x_loc;
    wire[9:0] y_loc;
    clk_div cd(clk,clk_d);
    h_counter hc(clk_d,h_count,v_trig);
    v_counter vc(clk_d,v_trig,v_count);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on,animate);
    
    pixel_gen pg(clk_d,x_loc,y_loc,video_on,red,green,blue,animate,switch1,switch2,switch3,switchup,switchdown,switchleft,switchright);
endmodule