module observability_demo(
    input A,
    input B,
    input C,
    output Y,
    output X
);
assign X = A | B;
assign Y = X|C;
endmodule 





