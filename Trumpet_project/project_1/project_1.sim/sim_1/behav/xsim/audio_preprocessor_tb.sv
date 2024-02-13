`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: audio_preprocessor_tb
//
// Testbench for 16-tap FIR lowpass filter
//
// vlsiuniverse.com/verilog-code-for-sine-cost-and-tan-cordic/
// https://www.youtube.com/watch?v=5bp4iYJ51qM
/////////////////////////////////////////////////////////////////
module audio_preprocessor_tb();
    
    //define parameters
    localparam WAVE_SAMP_CLK_PER = 2;        // 500 MHz
    localparam FIR_SAMP_CLK_PER = 10;   // 100 MHz
    localparam PHASE_2MHZ = 400;
    localparam PHASE_30MHZ = 7000;
    
    localparam signed [15:0] PI_POS = 16'h6488;
    localparam signed [15:0] PI_NEG = 16'h9B78;
    
    //define wires
    reg wave_clk = 1'b0;
    reg fir_clk = 1'b0;
    reg signed [15:0] phase_2Mhz = 0;
    reg signed [15:0] phase_30Mhz = 0;
    
    reg phase_valid = 1'b0;
    wire sincos_2Mhz_valid;
    wire signed [15:0] sin_2Mhz, cos_2Mhz;
    wire sincos_30Mhz_valid;
    wire signed [15:0] sin_30Mhz, cos_30Mhz;
    
    reg signed [15:0] noisy_in_sig = 0;
    wire signed [15:0] filtered_out_sig;
    
    //logic
    //2MHz sine wave
    cordic_0 wave_0 (
        .aclk                   (wave_clk),
        .s_axis_phase_tvalid    (phase_valid),
        .s_axis_phase_tdata     (phase_2Mhz),
        .m_axis_dout_tvalid     (sincos_2Mhz_valid),
        .m_axis_dout_tdata      ({sin_2Mhz, cos_2Mhz})
    );

    //30Mhz sine wave
    cordic_0 wave_1 (
        .aclk                   (wave_clk),
        .s_axis_phase_tvalid    (phase_valid),
        .s_axis_phase_tdata     (phase_30Mhz),
        .m_axis_dout_tvalid     (sincos_30Mhz_valid),
        .m_axis_dout_tdata      ({sin_30Mhz, cos_30Mhz})
    );   

    //sweep
    always@(posedge wave_clk) begin
        phase_valid <= 1'b1;

        //ensure phase is within bounds
        if(phase_2Mhz + PHASE_2MHZ < PI_POS) begin
            phase_2Mhz <= phase_2Mhz + PHASE_2MHZ;
        end else begin
            phase_2Mhz <= PI_NEG + (phase_2Mhz + PHASE_2MHZ - PI_POS);
        end 

        //ensure phase is within bounds
        if(phase_30Mhz + PHASE_30MHZ < PI_POS) begin
            phase_30Mhz <= phase_30Mhz + PHASE_30MHZ;
        end else begin
            phase_30Mhz <= PI_NEG + (phase_30Mhz + PHASE_30MHZ - PI_POS);
        end
    end

    //500 MHz wave clock
    always begin
        wave_clk = #(WAVE_SAMP_CLK_PER/2) ~wave_clk;
    end

    //100 MHz fir clock
    always begin
        fir_clk = #(FIR_SAMP_CLK_PER/2) ~fir_clk;
    end
    
    //noisy signal combines 2Mhz and 30 MHz
    always@(posedge fir_clk) begin
        noisy_in_sig <= (sin_2Mhz + sin_30Mhz)/2;
    end

    //inject noisy signal into module
    audio_preprocessor filter_inst(
        .clk              (fir_clk),
        .noisy_audio_in     (noisy_in_sig),
        .filtered_audio_out (filtered_out_sig)
    ); 

endmodule