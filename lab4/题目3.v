module test(
input  [7:0] a,b,
output [7:0] c,d,e,f,g,h,i,j,k );
  assign c = a & b;   //按位与
  assign d = a | b;   //按位或
  assign e = a ^ b;   //按位异或
  assign f = ~a;      //按位取反
  assign g = {a[3:0],b[3:0]};   //位拼接
  assign h = a >> 3;    //右移
  assign i = &b;    //缩位与
  assign j = (a > b) ? a : b;
  assign k = a - b;
endmodule

//a = 8’b0011_0011, 
//b = 8’b1111_0000
//c = 8'b0011_0000
//d = 8'b1111_0011
//e = 8'b1100_0011
//f = 8'b1100_1100
//g = 8'b0011_0000
//h = 8'b0000_0110
//i = 1'b0
//j = 8'b1111_0000
//k = -8'b1011_1101
