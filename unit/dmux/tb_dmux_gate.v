`timescale 1ns/1ps

module tb_dmux_gate;

reg a, c;
wire y1, y2;

dmux_gate uut(
    .a(a),
    .c(c),
    .y1(y1),
    .y2(y2)
);

initial begin
    $dumpfile("dmux_gate.vcd");
    $dumpvars(0, tb_dmux_gate);

    // 초기 값 설정
    a = 1; c = 0;
    
    #10;
    c = 0;
    #10;
    c = 1;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule