// tb_and_gate.v
`timescale 1ns/1ps

module tb_mux4way16_gate;

reg [15:0] a0, a1, a2, a3;
reg [1:0] c;
wire [15:0] y;

mux4way16_gate gt(
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .c(c),
    .y(y)
);

initial begin
    $dumpfile("mux4way16_gate.vcd");  // VCD 파일 생성
    $dumpvars(0, tb_mux4way16_gate);  // 전체 신호 덤프

    // 초기 값 설정
    a0 = 16'h000f;
    a1 = 16'h00ff;
    a2 = 16'h0fff;
    a3 = 16'hffff;

    #10;
    c = 2'b00;
    #10;
    c = 2'b01;
    #10;
    c = 2'b10;
    #10;
    c = 2'b11;
    #10;

    $finish;  // 시뮬레이션 종료
end

endmodule
