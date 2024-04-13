`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2024 12:05:35 AM
// Design Name: 
// Module Name: test_tb
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


module test_tb(

    );
    logic clk, rstn;
    logic signed [11:0] data;
    logic valid;
    logic  resetn_gen;
    always #10 clk <= ~clk;
    logic [4:0] counter;

    always @ (posedge clk) begin
        if(rstn) begin
            data <= 'b0;
            counter <= 'b0;
        end
        else begin
            if(valid) counter <= counter + 'b1;
            else counter <= counter;
            data <= sine[counter];
        end
    end
    reg [11:0] sine [0:31];
    reg [11:0] sine_II [0:31];
always_comb begin  
        sine_II[0] = 1000;
        sine_II[1] = 1588;
        sine_II[2] = 1951;
        sine_II[3] = 1951;
        sine_II[4] = 1588;
        sine_II[5] = 1000;
        sine_II[6] = 412;
        sine_II[7] = 49;
        sine_II[8] = 49;
        sine_II[9] = 412;
        sine_II[10] = 1000;
        sine_II[11] = 1588;
        sine_II[12] = 1951;
        sine_II[13] = 1951;
        sine_II[14] = 1588;
        sine_II[15] = 1000;
        sine_II[16] = 412;
        sine_II[17] = 49;
        sine_II[18] = 49;
        sine_II[19] = 412;
        sine_II[20] = 1000;
        sine_II[21] = 1588;
        sine_II[22] = 1951;
        sine_II[23] = 1951;
        sine_II[24] = 1588;
        sine_II[25] = 1000;
        sine_II[26] = 412;
        sine_II[27] = 49;
        sine_II[28] = 49;
        sine_II[29] = 412;
        sine_II[30] = 1000;
        sine_II[31] = 1588;
    end
    always_comb begin
         sine[0] = 1000;
        sine[1] = 1743;
        sine[2] = 1995;
        sine[3] = 1588;
        sine[4] = 792;
        sine[5] = 133;
        sine[6] = 49;
        sine[7] = 593;
        sine[8] = 1407;
        sine[9] = 1000;
        sine[10] = 1743;
        sine[11] = 1995;
        sine[12] = 1588;
        sine[13] = 792;
        sine[14] = 133;
        sine[15] = 49;
        sine[16] = 593;
        sine[17] = 1407;
        sine[18] = 1000;
        sine[19] = 1743;
        sine[20] = 1995;
        sine[21] = 1588;
        sine[22] = 792;
        sine[23] = 133;
        sine[24] = 49;
        sine[25] = 593;
        sine[26] = 1407;
        sine[27] = 1000;
        sine[28] = 1743;
        sine[29] = 1995;
        sine[30] = 1588; //double this (?)
        sine[31] = 792;
    end
    logic fft_done;
fft128 fft128(
        .clk_100MHz(clk),
        .rstn(rstn),
        .input_data(data),
        .valid(valid),
        .fft_done(fft_done)
        
    );
    initial begin
        clk <= 'b0;
        rstn <= 'b1;
        valid <= 'b0;
        #20;
        rstn <= 'b0;
        #70;
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        wait(fft_done);


                #20;
        rstn <= 'b0;
        #10;
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;

         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
         valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;


    end
endmodule
