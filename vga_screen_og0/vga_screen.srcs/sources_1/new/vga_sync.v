`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 02:04:05 PM
// Design Name: 
// Module Name: vga_sync
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


module vga_sync(
input[9:0] h_count,
input[9:0] v_count,
output[9:0] x_loc,
output [9:0]  y_loc,
output h_sync,v_sync,video_on,
output animate
    );
    //horizontal
    localparam HD = 640;
    localparam HF = 16;
    localparam HB = 48;
    localparam HR = 96;
    
    //vertical
    localparam VD = 480;
    localparam VF = 10;
    localparam VB = 33;
    localparam VR = 2;
    localparam VA_END = 480;             // vertical active pixel end (where the screen's drawing ends)
    localparam LINE   = 640;             // complete line (pixels)
    
    // animate: high for one tick at the end of the final active pixel line
    assign animate = ((v_count == VA_END - 1) & (h_count == LINE));
    
    assign v_sync = (v_count < (VD+VF)) | (v_count >= (VD+VF+VR)); 
    assign h_sync = (h_count < (HD+HF)) | (h_count >= (HD+HF+HR));
    assign video_on = (h_count < HD) & (v_count<VD);
    
    assign x_loc = h_count;
    assign y_loc = v_count;
    
    
     
endmodule
