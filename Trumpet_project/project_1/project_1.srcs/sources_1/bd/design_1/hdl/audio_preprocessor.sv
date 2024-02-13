`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// NOTES: MATLAB QUANTIZING FUNCTION
// 
// Create Date: 02/06/2024 07:15:10 AM
// Design Name: 
// Module Name: audio_preprocessor
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
// hackster.io/whitney-knitter/dsp-for-fpga-simple-fir-filter-in-verilog-91208d
//////////////////////////////////////////////////////////////////////////////////

//Note: I2S (inter IC sound) interface used to connect audio devices only supports 16/24-bit datawidths
//Truncate 32-bit signals to 16-bit signals
module audio_preprocessor(
    input clk,
    input rst_n,
    input signed [15:0] noisy_audio_in,             
    output reg signed [15:0] filtered_audio_out     
    );
    
    
    /*parameter weight_num = 17;
    reg signed [15:0] coeffs [0:weight_num-1] = { -0.000000,
                                                0.000001,
                                                -0.000005,
                                                0.000021,
                                                -0.000065,
                                                0.000149,
                                                -0.000265,
                                                0.000371,
                                                0.999585,
                                                0.000371,
                                                -0.000265,
                                                0.000149,
                                                -0.000065,
                                                0.000021,
                                                -0.000005,
                                                0.000001,
                                                -0.000000  }; */

    parameter weight_num = 17;
    reg signed [15:0] coeffs [0:weight_num-1] = { 16'h 3FFF, 
                                                  16'h 3C92, 
                                                  16'h 3946,
                                                  16'h 34BA,
                                                  16'h 2F3C,
                                                  16'h 29E3,
                                                  16'h 24E5,
                                                  16'h 205D,
                                                  16'h 1C5A,
                                                  16'h 18EF,
                                                  16'h 161F,
                                                  16'h 13ED,
                                                  16'h 1261,
                                                  16'h 1172,
                                                  16'h 111E,
                                                  16'h 1167,
                                                  16'h 1242 }; 

    /*
    //import filter coefficients
    int file;
    string line;
    real data;

    initial begin
        file = $fopen("./Text/filter_coefficients\.txt", "r");
        if(file != 0) begin
            //read coefficients from file
            for(int i = 0; i < weight_num + 1; i++) begin
                if(!$feof(file)) begin
                    line = $fgets(line, file);
                    $display("Line Read : %s", line);
                    coeffs[i] = $fscanf(line, "%f", data); // $atoi(line); KRIS    
                end
            end
            $fclose(file);
        end else begin
            $display("Error: cannot open the filter_coefficents.txt file");
        end
    end */

    //create delay line for noisy input signal to perform convolution and accummulate the values
    reg signed [15:0] delay_line [0:weight_num-1]; //KRIS minus 1?
    reg signed [31:0] product;
    reg signed [31:0] accummulate;
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            accummulate <= 0;
            for(int i = 0; i < weight_num; i++) begin // KRIS # of weights is 16? (17 filter coefficients tho)
                delay_line[i] = 0;
            end
        end else begin
            //shift sample input into delay line
            
            delay_line[0] <= noisy_audio_in;
           /* for(int i = weight_num; i > 0; i++) begin //KRIS - not working?
                delay_line[i] <= delay_line[i - 1]; 
            end */
            delay_line[1] <= delay_line [0];
            delay_line[2] <= delay_line [1];
            delay_line[3] <= delay_line [2];
            delay_line[4] <= delay_line [3];
            delay_line[5] <= delay_line [4];
            delay_line[6] <= delay_line [5];
            delay_line[7] <= delay_line [6];
            delay_line[8] <= delay_line [7];
            delay_line[9] <= delay_line [8];
            delay_line[10] <= delay_line [9];
            delay_line[11] <= delay_line [10];
            delay_line[12] <= delay_line [11];
            delay_line[13] <= delay_line [12];
            delay_line[14] <= delay_line [13];
            delay_line[15] <= delay_line [14];
            delay_line[16] <= delay_line [15];
            

            //main filter operation: multiply and accumulate
            accummulate = 0;
            for(int i = 0; i < weight_num; i++) begin
                product = delay_line[i] * coeffs[i];
                accummulate += product;
            end
            filtered_audio_out <= accummulate >> 15; //KRIS            
        end
    end
endmodule
