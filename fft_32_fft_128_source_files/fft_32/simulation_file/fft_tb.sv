`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 02:09:28 PM
// Design Name: 
// Module Name: fft_tb
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


module fft_tb(

    );


    logic clk, rstn;

     reg [11:0] sine [0:31];
    reg [11:0] sine_II [0:31];
    //one period
    

        //sine[32] = -0;
    


    //1 period and some:
   /* always_comb begin  
        sine[0] = 0;
        sine[1] = 18;
        sine[2] = 33;
        sine[3] = 46;
        sine[4] = 54;
        sine[5] = 57;
        sine[6] = 54;
        sine[7] = 46;
        sine[8] = 33;
        sine[9] = 18;
        sine[10] = 0;
        sine[11] = -18;
        sine[12] = -33;
        sine[13] = -46;
        sine[14] = -54;
        sine[15] = -57;
        sine[16] = -54;
        sine[17] = -46;
        sine[18] = -33;
        sine[19] = -18;
        sine[20] = 0;
        sine[21] = 18;
        sine[22] = 33;
        sine[23] = 46;
        sine[24] = 54;
        sine[25] = 57;
        sine[26] = 54;
        sine[27] = 46;
        sine[28] = 33;
        sine[29] = 18;
        sine[30] = 0;
        sine[31] = -18;
        //sine[32] = -0;
    end*/

   /* always_comb begin
        sine[0] = 1000;
        sine[1] = 1951;
        sine[2] = 1588;
        sine[3] = 412;
        sine[4] = 49;
        sine[5] = 1000;
        sine[6] = 1951;
        sine[7] = 1588;
        sine[8] = 412;
        sine[9] = 49;
        sine[10] = 1000;
        sine[11] = 1951;
        sine[12] = 1588;
        sine[13] = 412;
        sine[14] = 49;
        sine[15] = 1000;
        sine[16] = 1951;
        sine[17] = 1588;
        sine[18] = 412;
        sine[19] = 49;
        sine[20] = 1000;
        sine[21] = 1951;
        sine[22] = 1588;
        sine[23] = 412;
        sine[24] = 49;
        sine[25] = 1000;
        sine[26] = 1951;
        sine[27] = 1588;
        sine[28] = 412;
        sine[29] = 49;
        sine[30] = 1000;
        sine[31] = 1951;
    end*/

    /*always_comb begin
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
    end*/
    /*always_comb begin
        sine[0] = 1000;
        sine[1] = 2000;
        sine[2] = 1000;
        sine[3] = 0;
        sine[4] = 1000;
        sine[5] = 2000;
        sine[6] = 1000;
        sine[7] = 0;
        sine[8] = 1000;
        sine[9] = 2000;
        sine[10] = 1000;
        sine[11] = 0;
        sine[12] = 1000;
        sine[13] = 2000;
        sine[14] = 1000;
        sine[15] = 0;
        sine[16] = 1000;
        sine[17] = 2000;
        sine[18] = 1000;
        sine[19] = 0;
        sine[20] = 1000;
        sine[21] = 2000;
        sine[22] = 1000;
        sine[23] = 0;
        sine[24] = 1000;
        sine[25] = 2000;
        sine[26] = 1000;
        sine[27] = 0;
        sine[28] = 1000;
        sine[29] = 2000;
        sine[30] = 1000;
        sine[31] = 0;
    end*/

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
    logic signed [11:0] data;
    logic valid;
    logic  resetn_gen;
    always #10 clk <= ~clk;
    fft_wrapper fft_wrapper(
        .clk_100MHz(clk),
        .resetn(rstn),
        .input_data(data),
        .valid(valid),
        .resetn_gen(resetn_gen)
    );

    initial begin
        clk <= 'b0;
        rstn <= 'b1;
        valid <= 'b0;
        #20;
        rstn <= 'b0;
        #20;
        data <= sine[0];
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[1];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[2];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[3];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[4];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[5];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[6];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[7];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[8];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[9];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[10];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[11];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[12];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[13];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[14];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[15];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[16];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[17];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[18];

         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[19];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[20];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[21];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[22];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[23];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[24];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[25];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[26];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[27];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[28];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[29];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[30];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[31];
         #20;
        valid <= 'b0;
        //try to mess with the data in here:
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= 'hff;
         #20;
        valid <= 'b0;
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= 'hff;
         #20;
        valid <= 'b0;
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= 'hff;
         #20;
        valid <= 'b0;
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= 'hff;
         #20;
        valid <= 'b0;
        ////////////////////////
        #1000;

        valid <= 'b0;
        #200;
        ///second set of data:
        #20;
        data <= sine_II[0];
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[1];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[2];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[3];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[4];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[5];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[6];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[7];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[8];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[9];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[10];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[11];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[12];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[13];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[14];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[15];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[16];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[17];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[18];

         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[19];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[20];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[21];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[22];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[23];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[24];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[25];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[26];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[27];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[28];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[29];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[30];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[31];
         #20;
        valid <= 'b0;
        #1000;

        wait( resetn_gen);

        #30;
         valid <= 'b0;
        #200;
        ///second set of data:
        #20;
        data <= sine_II[0];
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[1];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[2];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[3];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[4];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[5];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[6];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[7];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[8];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[9];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[10];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[11];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[12];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[13];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[14];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[15];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[16];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[17];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[18];

         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[19];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[20];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[21];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[22];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[23];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[24];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[25];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[26];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[27];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[28];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[29];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[30];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine_II[31];
         #20;
        valid <= 'b0;
        #1000;
        wait(resetn_gen == 0);
         #20;
        rstn <= 'b0;
        #20;
        data <= sine[0];
        valid <= 'b1;
        #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[1];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[2];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[3];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[4];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[5];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[6];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[7];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[8];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[9];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[10];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[11];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[12];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[13];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[14];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[15];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[16];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[17];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[18];

         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[19];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[20];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[21];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[22];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[23];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[24];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[25];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[26];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[27];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[28];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[29];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[30];
         #20;
        valid <= 'b0;
        #60;
        valid <= 'b1;
        data <= sine[31];
         #20;
        valid <= 'b0;
        #1000;
       
    end
endmodule
