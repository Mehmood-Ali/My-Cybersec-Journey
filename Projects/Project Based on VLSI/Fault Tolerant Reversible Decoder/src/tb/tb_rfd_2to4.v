`timescale 1ns/1ps
module tb_rfd_2to4;
    reg s1, s0;
    wire [3:0] y;
    wire g0, g1;

    rfd_2to4 uut (
        .s1(s1),
        .s0(s0),
        .y(y),
        .g0(g0),
        .g1(g1)
    );

    initial begin
        $display("time\t s1 s0 | y3 y2 y1 y0 | g1 g0");
        $display("-------------------------------------------------");
        s1 = 0; s0 = 0; #10;
        $display("%0dns\t %b  %b | %b  %b  %b  %b | %b  %b", $time, s1, s0, y[3], y[2], y[1], y[0], g1, g0);
        s1 = 0; s0 = 1; #10;
        $display("%0dns\t %b  %b | %b  %b  %b  %b | %b  %b", $time, s1, s0, y[3], y[2], y[1], y[0], g1, g0);
        s1 = 1; s0 = 0; #10;
        $display("%0dns\t %b  %b | %b  %b  %b  %b | %b  %b", $time, s1, s0, y[3], y[2], y[1], y[0], g1, g0);
        s1 = 1; s0 = 1; #10;
        $display("%0dns\t %b  %b | %b  %b  %b  %b | %b  %b", $time, s1, s0, y[3], y[2], y[1], y[0], g1, g0);
        $finish;
    end
endmodule
