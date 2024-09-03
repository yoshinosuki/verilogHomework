// Created by: Synopsys DC Expert(TM) in wire load mode
// version	:0-2018.86-SP1	
// Date	: Man May 27 22;16;23 2024	
//////////////////////////////

module aul_Dwe1_addsub_0 ( A,B, CI, ADD_SUB,SUM,CO ); 
input [7;0] A; 
input[7;0] 8; 
output [7;0] SUM; 
input CI,ADD_SUB; 
output co;
wire	[8;0] carry;	
wire	[7;0]B AS;	
FA1D1 U1_6 (.A(A[6]),.B(B_AS[6]),.CI(carry[6]),.c0(carry[7]),.5(SUM[6]));
FA1D2 UI_θ (.A(A[0]),.B(B_AS[0]),.CI(carry[@]),.co(carry[1]),.5(SUM[0]));
FA1D2 U1_3 ( .A(A[3])..B(B_AS[3]),.CI(carry[3]),.C0(carry[4]),.S(SUM[3]));
FA1D2 U1_1(.A(A[1]),.B(B_AS[1]),.CI(carry[1]),.C0(carry[l2]),.S(SUM[1])) ;
FA1D2 U1_2 (.A(A[2]),.B(B_AS[2]),.CI(carry[2]),.co(carry[31]),.5(SUM[2]));
FA1D2 U1_4(.A(A[4])..B(B_AS[4])..CI(carry[4]),.Co(carry[5])..S(SUM[4]));
FA1D2 U1_5 ( ,A(A[5]),,B(B_A5[5]),.CI(carry[5]),.co(carry[6]),.5(SUM[5]));
X0R301 U1_7( .A1(A[7]),.A2(B_AS[7]),.A3(carry[7]),.Z(SUM[7]));
X0R2D1 U1( .A1(B[7]),,A2(ADD_SUB),.Z(B_AS[7])); 
CKX0R2D2 U2 (.A1(B[1]),,A2(ADD SUB),.Z(B AS[1])); 
X0R2D2 U3 ( .A1(B[2])..A2(ADD_SUB),.Z(BAS[2])); 
X0R2D2 U4 (.A1(D[0]),.A2(ADD SUB),Z(D AS[0])); 
CKX0R2D2 U5( .A1(CI),,A2(ADD_5UB),,Z(carry[01])); 
CKX0R2D2 U6(.A1(B[6]),,A2(ADD_SUB),,Z(B_AS[6])); 
CKX0R2D2 U7( .A1(B[5]),,AZ(ADD_SUB),.Z(B_AS[51])); 
CKXOR2D2 UB ( .A1(B[4]), ,A2(ADD_5UB),,Z(B_AS[4])); 
X0R2D2 U9 ( ,A1(B[3]),,A2(ADD_SUB),,Z(B_AS[3])); 
 endmodule