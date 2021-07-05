// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_modi_TDATA "../tv/rtldatafile/rtl.apskmod.autotvout_modi.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_modi (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_modi_TDATA,
    input TRAN_modi_TVALID,
    output TRAN_modi_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_modi_TVALID_temp;
    wire modi_TDATA_full;
    wire modi_TDATA_empty;
    reg modi_TDATA_write_en;
    reg [32 - 1:0] modi_TDATA_write_data;
    reg modi_TDATA_read_en;
    wire [32 - 1:0] modi_TDATA_read_data;
    
    fifo #(340, 32) fifo_modi_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(modi_TDATA_write_en),
        .write_data(modi_TDATA_write_data),
        .read_clock(clk),
        .read_en(modi_TDATA_read_en),
        .read_data(modi_TDATA_read_data),
        .full(modi_TDATA_full),
        .empty(modi_TDATA_empty));
    
    always @ (*) begin
        modi_TDATA_write_en <= TRAN_modi_TVALID;
        modi_TDATA_write_data <= TRAN_modi_TDATA;
        modi_TDATA_read_en <= 0;
    end
    assign TRAN_modi_TVALID = TRAN_modi_TVALID_temp;

    
    assign TRAN_modi_TREADY = ~(modi_TDATA_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [151:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [151:0] rm_0x(input [151:0] token);
        reg [151:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_modi_TDATA;
    
    assign transaction = transaction_save_modi_TDATA;
    
    initial begin : AXI_stream_receiver_modi_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_modi_TDATA = 0;
        fifo_modi_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_modi_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_modi_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_modi_TDATA);
                while (~fifo_modi_TDATA.empty) begin
                    fifo_modi_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_modi_TDATA = transaction_save_modi_TDATA + 1;
                fifo_modi_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule
