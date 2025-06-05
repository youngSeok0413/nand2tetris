// tb_and_gate.v
`timescale 1ns/1ps

module tb_mux16_gate;

reg [0:15] a, b;
reg c;
wire [0:15] y;

// 테스트할 모듈 인스턴스화
mux16_gate uut (
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin
    $dumpfile("mux16_gate.vcd");  // VCD 파일 생성
    $dumpvars(0, tb_mux16_gate);  // 전체 신호 덤프

    // 초기 값 설정
    a = 16'hffff; b = 16'h0000;
    #10;
    c = 0;
    #10;
    c = 1;
    #10;
    c = 0;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule
