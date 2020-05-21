module exm4(input a,b,c,d
    input sel0,sel1
    output out);
    wire E1,E2;
    exm3 _mux1(sel1,a,b,E1);//exm3是题目3中已封装好的电路
    exm3 _mux2(sel1,c,d,E2);
    exm3 _mux3(sel0,E1,E2,out);
endmodule