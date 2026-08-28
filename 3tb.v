module mux4to1_tb;
  reg i0, i1, i2, i3;
  reg s0, s1;
  wire y;

  mux4to1 uut(i0, i1, i2, i3, s0, s1, y);

  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0, mux4to1_tb);

    $monitor("t=%0t | i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b | y=%b",
              $time, i0, i1, i2, i3, s0, s1, y);

    i0=0; i1=1; i2=0; i3=1;

    s0=0; s1=0; #10;
    s0=1; s1=0; #10;
    s0=0; s1=1; #10;
    s0=1; s1=1; #10;

    #10 $finish;
  end
endmodule
