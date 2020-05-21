module exm3(input sel,
    input a,b,
    output out);
    assign out = (~sel&a)|(sel&b);
endmodule