module sub_test(
input  a,b,
output o);
assign o = a + b;
endmodule


module test(
input a,b,
output c);
always@(*)
begin
   sub_test sub_test_1(a,b,c);
end
endmodule