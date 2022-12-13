`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 01:33:04 PM
// Design Name: 
// Module Name: vga_project
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


module vga_project(
clk,clk_d
    );
    //parameter div_value =32'd10000;
    parameter div_value = 1;
    input clk;
    output clk_d;
    reg clk_d;
    reg count;
    initial begin
    clk_d = 0;
    count = 0;    
    end
    always @ (posedge clk)
    begin
    if (count == div_value)
    begin
        clk_d <= ~clk_d;
        count <= 0;
    end
    else
    count <= count + 1;
    end
endmodule

module h_counter(
clk,h_count,trig_v
    );
    input clk;
    output[9:0] h_count;
    output trig_v;
    reg[9:0] h_count;
    reg trig_v;
    initial begin
        h_count <= 0;
        trig_v <= 0;
    end
    always @ (posedge clk)
    begin
        if (h_count < 799)
        begin
            h_count <= h_count + 1;
            trig_v <= 1'b0;       
        end
        else 
        begin
            trig_v <= 1'b1;
            h_count <= 0;        
        end
    end
endmodule


module v_counter(clk,enable_v,v_count);
    input clk;
    input enable_v;
    output[9:0] v_count;
    reg[9:0] v_count;
    initial begin
        v_count = 0;
    end
    always @( posedge clk )
    begin
        if (enable_v & (v_count < 524))
        begin 
                v_count <= v_count + 1;    
        end
        else if (enable_v)
        begin
            v_count <= 0;        
        end
    end
endmodule

module vga_sync(
input[9:0] h_count,
input[9:0] v_count,
output[9:0] x_loc,
output [9:0]  y_loc,
output h_sync,v_sync,video_on
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
    
    assign v_sync = (v_count < (VD+VF)) | (v_count >= (VD+VF+VR)); 
    assign h_sync = (h_count < (HD+HF)) | (h_count >= (HD+HF+HR));
    assign video_on = (h_count < HD) & (v_count<VD);
    
    assign x_loc = h_count;
    assign y_loc = v_count;
     
endmodule

module vga_top(
input clk,
output h_sync,v_sync,
output [3:0] red,green,blue
    );
    wire clk_d, v_trig, video_on;
    wire [9:0] h_count;
    wire[9:0] v_count;
    wire[9:0] x_loc;
    wire[9:0] y_loc;
    clk_div cd(clk,clk_d);
    h_counter hc(clk_d,h_count,v_trig);
    v_counter vc(clk_d,v_trig,v_count);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on);
    pixel_gen pg(clk_d,x_loc,y_loc,video_on,red,green,blue);
endmodule

