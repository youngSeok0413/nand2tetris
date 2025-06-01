// tb_and_gate.v
`timescale 1ns/1ps

module tb_nand_gate;

reg a, b;
wire y;

// 테스트할 모듈 인스턴스화
nand_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("nand_gate.vcd");  // VCD 파일 생성
    $dumpvars(0, tb_nand_gate);  // 전체 신호 덤프

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
