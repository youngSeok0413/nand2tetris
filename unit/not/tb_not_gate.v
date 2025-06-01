`timescale 1ns/1ps

module tb_not_gate;

reg a;
wire y;

not_gate uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("not_gate.vcd");  // VCD 파일 생성
    $dumpvars(0, tb_not_gate);  // 전체 신호 덤프

    // 초기 값 설정
    a = 0;
    #10;
    a = 1;
    #10;
    a = 0;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule