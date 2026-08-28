module mux2to1_tb;
  reg a, b, sel;
  wire y;

  mux2to1 uut(a, b, sel, y);

  initial begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_tb);

    $monitor("time=%0t | a=%b b=%b sel=%b | y=%b", $time, a, b, sel, y);

    a=0; b=0; sel=0; #10;
    a=0; b=1; sel=0; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=1; sel=0; #10;

    a=0; b=0; sel=1; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=0; sel=1; #10;
    a=1; b=1; sel=1; #10;

    #10 $finish;
  end
endmodule
