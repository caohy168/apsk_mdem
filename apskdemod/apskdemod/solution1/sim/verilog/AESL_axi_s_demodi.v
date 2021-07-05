// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_demodi_TDATA "../tv/cdatafile/c.apskdemod.autotvin_demodi.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_demodi (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_demodi_TDATA,
    output TRAN_demodi_TVALID,
    input TRAN_demodi_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_demodi_TVALID_temp;
    wire demodi_TDATA_full;
    wire demodi_TDATA_empty;
    reg demodi_TDATA_write_en;
    reg [32 - 1:0] demodi_TDATA_write_data;
    reg demodi_TDATA_read_en;
    wire [32 - 1:0] demodi_TDATA_read_data;
    
    fifo #(340, 32) fifo_demodi_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(demodi_TDATA_write_en),
        .write_data(demodi_TDATA_write_data),
        .read_clock(clk),
        .read_en(demodi_TDATA_read_en),
        .read_data(demodi_TDATA_read_data),
        .full(demodi_TDATA_full),
        .empty(demodi_TDATA_empty));
    
    always @ (*) begin
        demodi_TDATA_write_en <= 0;
        demodi_TDATA_read_en <= TRAN_demodi_TREADY & TRAN_demodi_TVALID;
    end
    
    assign TRAN_demodi_TDATA = demodi_TDATA_read_data;
    assign TRAN_demodi_TVALID = TRAN_demodi_TVALID_temp;

    
    assign TRAN_demodi_TVALID_temp = ~(demodi_TDATA_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [175:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [175:0] rm_0x(input [175:0] token);
        reg [175:0] token_tmp;
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
    
    reg [31:0] transaction_load_demodi_TDATA;
    
    assign transaction = transaction_load_demodi_TDATA;
    
    initial begin : AXI_stream_driver_demodi_TDATA
        integer fp;
        reg [175:0] token;
        reg [32 - 1:0] data;
        reg [175:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_demodi_TDATA = 0;
        fifo_demodi_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_demodi_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_demodi_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_demodi_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_demodi_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_demodi_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_demodi_TDATA = transaction_load_demodi_TDATA + 1;
            end
        end
    end

endmodule
