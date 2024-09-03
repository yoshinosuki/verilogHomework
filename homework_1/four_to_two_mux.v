/**
 * Filename            :   four_to_two_mux.v
 * Author              :   Wang Xiang
 * Description         :   设计一款多路选择器，四输入两输出，输入输出均为4bit位宽。选择信号SE为2bit位宽。当SE的值分别为00，01，10，11时，输出端口MN分别输出AB，BC，CD，AD数据。完成verilog编码，并编写testbench进行测试。
 * Revision History    :   24-03-19
 * Revision            :   1.0
 * 学习java时注释是这么写的，不知道Verilog是什么样的
 */


module four_to_two_mux (
    input [3:0] A, B, C, D,  // 四个输入端口，4 位宽
    input [1:0] SE,          // 选择信号，2 位宽
    output reg [3:0] M,       // 输出端口 M，4 位宽
    output reg [3:0] N        // 输出端口 N，4 位宽
);

always @(*) //代码块对所有信号的变化都敏感，无论哪个信号发生变化，这个代码块都会被执行
begin
    case (SE)
        2'b00: begin  // 当 SE 的值为 00 时，M 输出 A，N 输出 B
            M = A;
            N = B;
        end
        2'b01: begin  // 当 SE 的值为 01 时，M 输出 B，N 输出 C
            M = B;
            N = C;
        end
        2'b10: begin  // 当 SE 的值为 10 时，M 输出 C，N 输出 D
            M = C;
            N = D;
        end
        2'b11: begin  // 当 SE 的值为 11 时，M 输出 A，N 输出 D
            M = A;
            N = D;
        end
        default: begin
            M = 4'b0;  // 默认输出 0
            N = 4'b0;  // 默认输出 0
        end
    endcase
end

endmodule
