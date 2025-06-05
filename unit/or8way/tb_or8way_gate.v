// tb_and_gate.v
`timescale 1ns/1ps

module tb_or8way_gate;

reg [7:0] a;
wire y;

// 테스트할 모듈 인스턴스화
or8way_gate uut (
    .a0(a[0]),
    .a1(a[1]),
    .a2(a[2]),
    .a3(a[3]),
    .a4(a[4]),
    .a5(a[5]),
    .a6(a[6]),
    .a7(a[7]),
    .y(y)
);

initial begin
    $dumpfile("or8way_gate.vcd");  // VCD 파일 생성
    $dumpvars(0, tb_or8way_gate);  // 전체 신호 덤프

    // 초기 값 설정
    a = 8'b00000000;
    #10;
    a = 8'b11110000;
    #10;
    a = 8'b00001111;
    #10;
    a = 8'b11111111;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule
