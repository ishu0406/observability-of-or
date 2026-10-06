module observability_demo_tb;
reg A;
reg B;
reg C;
wire X;
wire Y;

observability_demo dut(
    .A(A),
    .B(B),
    .C(C),
    .X(X),
    .Y(Y)
);

initial begin
    $dumpfile("observability_demo.vcd");
    $dumpvars(0,observability_demo_tb);

    A=1;
    B=1;
    C=0;
    #10;

    $display(" A=%b B=%b C=%b | X=%b Y=%b",
      A,B,C,X,Y);

    A=0;
    B=1;
    C=1;
    #10;

    $display(" A=%b B=%b C=%b | X=%b Y=%b",
      A,B,C,X,Y);

    A=1;
    B=0;
    C=1;
    #10;

    $display(" A=%b B=%b C=%b | X=%b Y=%b",
      A,B,C,X,Y);
      
    A=1;
    B=1;
    C=1;
    #10;

    $display(" A=%b B=%b C=%b | X=%b Y=%b",
      A,B,C,X,Y);
      
    $display("Simulation Completed");
    $finish;

end 
endmodule 
      