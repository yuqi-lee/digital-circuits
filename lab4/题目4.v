module sub_test(
input a,b,
output reg c);
always@(*)
  c = (a<b)? a : b;
endmodule

module test(
input a,b,c,
output o);
  reg temp;
  sub_test(.a(a),.b(b),.temp(temp));
  sub_test(.a(temp),.b(c),.c(o));
endmodule