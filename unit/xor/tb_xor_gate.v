`timescale 1ns/1ps

module tb_xor_gate;

reg a, b;
wire y;

xor_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars(0, tb_xor_gate);

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