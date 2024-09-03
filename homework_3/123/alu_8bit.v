/**
 * Filename            :   alu_8bit.v
 * Author              :   Wang Xiang
 * Description         :   alu
 * Revision History    :   24-05-25
 * Revision            :   1.0
 */

module	alu_8bit
(
	input		[7:0]	a,		
	input		[7:0]	b,				//alu数据输入
	input				cin,			//进位输入
	input		[2:0]	alu_sel,		//功能选择
	output	    [7:0]	alu_out,		//数据输出
	output			alu_cout		//进位输出
);
reg	    [7:0]	result;				//寄存运算结果
wire	[8:0]	carry_temp;			//最高位为进位
assign	alu_out 	  = result;
assign	carry_temp = {1'b0,a} + {1'b0,b};
assign	alu_cout	  = carry_temp[8];
always@(*)	begin
	case(alu_sel)
		3'b000:	result <= a + b;
		3'b001:	result <= a - b;
		3'b010:	result <= a - b - 1'b1;
		3'b011:	result <= a + b + 1;
        3'b100: result <= a & b;
        3'b101: result <= a | b;
        3'b110: result <= a ^ b;
        3'b111: result <= ~b;

default:	result <= a + b;
	endcase
end
endmodule
