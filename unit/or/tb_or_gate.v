`timescale 1ns/1ps

module tb_or_gate;

reg a, b;
wire y;

or_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("or_gate.vcd");
    $dumpvars(0, tb_or_gate);

    // 초기 값 설정
    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule