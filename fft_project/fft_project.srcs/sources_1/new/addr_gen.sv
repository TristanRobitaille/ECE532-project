module addr_gen #(parameter FFT_LENGTH = 16, parameter N = 14)(
    input start_fft,
    input rstn,
    input clk,
    input load_data,
    //related to mem block 1: actually only need one port
    output logic [13:0] address_mem_1, 
    output logic mem_en,
    output logic read_write, 
    output logic [13:0] address_mem_2, 
    output logic mem_en2,
    output logic read_write_2, 
    //mem_block_1 control signals output: tell fft that there is a valid data
    output logic incr_read_addr,
    output logic read_done,

    //twiddle output:
    output logic twiddle_addr_incr,
    output logic [31:0] sin,
    output logic [31:0] cos,
    //BFU:
    output logic bfu_start,
    input logic bfu_finished_cal,
    //for writing back:
    output logic write_triggered,
    input write_done,
    /////////////////////////////
   // output logic [7:0] twiddle_addr,
   // output logic [13:0] memory_1_addr,
    //output logic [13:0] memory_2_addr,
    output logic fft_done,
    output logic bank_select
    );
    
    //modules in addr_gen:

    assign sin = sin_data;
    assign cos = cos_data;
    /////FSM for controlling address generation
    parameter START = 4'd0; //assuming that load to mem_1 is done (done separately)
    parameter READ_MEM_1 = 4'd1;  //starting to read address from memory block to bfu block
    parameter READ_MEM_FIN = 4'd2; //finished reading all data

    //not sure:
    parameter BFU_INIT = 4'd3;
    parameter READ_SYNC = 4'd4; 
    parameter BFU_DONE = 4'd5; // finished one BFU operation
    


    //might change because it is related to 
    parameter WRITE_MEM_2 = 4'd6; //with valid bfu output, write the result to the final memory block ()
    parameter MEM_2_WRITTEN = 4'd7;


    parameter LEVEL_COUNTER_INCR = 4'd8;
    parameter FINISH_FFT = 4'd9;
    parameter READ_WAIT = 4'd10;



    logic [3:0] mem_1_state; //manages the twiddle factor and the mem 1 factor
    logic [3:0] bfu_state;
    logic [3:0] mem_2_state;

    logic [4:0] fft_level;
    logic [N-1:0] buttferfly_pair;
    logic done_computation;
    logic finished_writting;

    logic [10:0] data_count;
    //determining when to end:

    logic [4:0] fft_count;
    logic [1:0] sync_read;
    //for writing back:
    //logic read_write;
    //encoding mem_1_state:
    always_ff @ (posedge clk) begin
        if(!rstn) begin
            mem_1_state <= START;
            incr_read_addr <= 0;
            twiddle_addr_incr <=0;
            fft_done <= 'b0;
            read_write <= 'b0;
            //writedata <= 'b0;
            read_done <= 'b0;
            finished_writting <= 'b1;
            fft_level <= 'b0;
            buttferfly_pair <= 'b0;
            done_computation <= 'b1;
            data_count <= 'b0;
            write_triggered <= 'b0;
            fft_count <= 'b0;
            sync_read <= 'b0;
        end else begin
            case (mem_1_state)
                START: begin
                    buttferfly_pair <= 'b0;
                    read_done <= 'b0;
                    data_count <= 'b0;
                    write_triggered <= 'b0;
                    fft_count <= 'b0;
                    sync_read <= 'b0;
                    if(start_fft & finished_writting) begin
                        mem_1_state <=  READ_MEM_1; 
                        finished_writting <= 'b0;
                    end
                    else begin 
                        mem_1_state <= START;
                        fft_done <= 'b0;
                        incr_read_addr <= 'b0;
                        twiddle_addr_incr <= 'b0;
                    end
                end
                READ_MEM_1: begin //incremenet readaddress in bit_reversed_order:
                        mem_1_state <= READ_SYNC;
                        //enable memory read and write:
                        address_mem_1 <= memory_1_addr;
                        address_mem_2 <= memory_2_addr;
                        mem_en <= 'b1;
                        mem_en2 <= 'b1;
                end
                READ_SYNC: begin
                    if(sync_read == 'b11) begin
                        incr_read_addr <= 'b1;
                        twiddle_addr_incr <= 'b1;
                        read_write<= 'b0; //to read instead of write
                        read_write_2 <= 'b0;
                        data_count <= data_count + 'b1;
                        //increment the butterfly pairs
                        buttferfly_pair <= buttferfly_pair + 1;
                        sync_read <= 'b0;
                        mem_1_state <= READ_WAIT;
                    end
                    else begin
                        sync_read <= sync_read + 'b1;
                        mem_1_state <= READ_SYNC;
                    end
                end
                READ_WAIT: begin //just waiting for read_done to be asserted
                    if(read_done && data_count == FFT_LENGTH-1) begin 
                        mem_1_state <= BFU_DONE;
                        read_done <= 'b0;
                        data_count <= 'b0;
                        read_done <= ~read_done;
                        write_triggered <= 'b1;
                        sync_read <= 'b0;
                    end
                    else if (read_done && data_count < FFT_LENGTH-1) begin
                        mem_1_state <= READ_MEM_1;
                        bfu_start <= 'b1;
                        read_done <= 'b0;
                    end
                    else begin
                        mem_1_state <= READ_WAIT;
                    end
                end

                BFU_DONE: begin //wait for 3 clock cycles also:
                    write_triggered <= 'b1;
                    buttferfly_pair <= 'b0; //this is to regenerate all the written addresses;
                    mem_en <= 'b0;
                    mem_en2 <= 'b0;
                    if(sync_read == 'b11)
                        mem_1_state <= WRITE_MEM_2;
                    else begin
                         mem_1_state <= BFU_DONE;
                         sync_read <= sync_read + 'b1;
                    end
                end
                WRITE_MEM_2:begin
                    bfu_start <= 'b0; 
                    write_triggered <= 'b1;
                    address_mem_1 <= memory_1_addr;
                    address_mem_2 <= memory_2_addr;
                    mem_en <= 'b1;
                    mem_en2 <= 'b1;
                    read_write <= 'b1;
                    read_write_2 <= 'b1;
                    buttferfly_pair <= buttferfly_pair + 1;
                    mem_1_state <= MEM_2_WRITTEN;
                end
                MEM_2_WRITTEN : begin
                    data_count <= data_count + 'b1;
                    if(fft_level == FFT_LENGTH-1) mem_1_state <= FINISH_FFT;
                    else if(data_count == FFT_LENGTH -1) begin //next level of computation
                        mem_1_state <= READ_MEM_1;
                        data_count <= 'b0;
                        write_triggered <= 'b0;
                        buttferfly_pair <= 'b0;
                    end
                    else mem_1_state <= WRITE_MEM_2;
                end
                FINISH_FFT: begin
                    fft_done <= 'b1;
                    mem_1_state <= START;
                end
                default: mem_1_state <= mem_1_state;

            endcase
                            
        end

    end
    //////////////////////////////////////////////rotating////////////
    //local signals to change the memory address signal to toggle:
    logic [13:0] memory_1_addr;
    logic [13:0] memory_2_addr;
    logic [2:0] mem_valid;

    //read control:
    always_ff @(posedge clk) begin
        if(!rstn) begin
            buttferfly_pair <= 'b0;
            mem_valid <= 'b0;
            address_mem_1 <= 'b0;
            address_mem_2 <= 'b0;
            mem_en <= 'b0;
            mem_en2 <= 'b0;
            bfu_start <= 'b0;
            read_write <= 'b0;
            read_write_2 <= 'b0;
        end
        else begin
            if(incr_read_addr) begin
                incr_read_addr <= ~incr_read_addr;
                read_done <= 'b1;
            end
            /*if (write_triggered) begin
                write_triggered <= ~write_triggered;
            end*/
            if(buttferfly_pair == FFT_LENGTH-1 && mem_1_state == MEM_2_WRITTEN) begin 
                fft_level <= fft_level + 1; //related to fft_length
                buttferfly_pair = 'b0;
            end
        end
    end

    //temp signals:
    logic [13:0] but_p_1;
    logic [13:0] but_p_2;
    assign but_p_1 = buttferfly_pair * 2;
    assign but_p_2 = buttferfly_pair * 2 + 1'b1;
    //the rotate functions:
    rotate rotate_a (
        .level(fft_level),
        .butterfly_pair(but_p_1),
        .shifted_address(memory_1_addr)
    );

    rotate rotate_b (
        .level(fft_level),
        .butterfly_pair(but_p_2),
        .shifted_address(memory_2_addr)
    );
    /////////////////////////////////////////////////////////////////////////
    
    
    ///twiddle factor control and related mem block:
    //twiddle can just be a readmemh function with set values:
    logic [4:0] twiddle_addr;
    logic [31:0] sin_data,cos_data;
    always_ff @(posedge clk) begin
        if(!rstn) begin
            twiddle_addr<= 'b0;
        end
        else begin
            if(twiddle_addr_incr) begin //this is a pulse
                //generating my selection and the twiddle facotrmem
                twiddle_addr <= buttferfly_pair[4:0]; //masking out hhigher bits
            end
        end
    end
    //twiddle mem:
    twiddle_factor_mem twiddel_factor_mem(
        .addr(twiddle_addr),
        .sin_data(sin_data),
        .cos_data(cos_data)
    );
endmodule

    