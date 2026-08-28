module decoder2to4_tb;
  reg a, b;
  wire d0, d1, d2, d3;

  decoder2to4 uut(a, b, d0, d1, d2, d3);

  initial begin
    $dumpfile("decoder2to4.vcd");
    $dumpvars(0, decoder2to4_tb);

    $monitor("t=%0t | a=%b b=%b | d0=%b d1=%b d2=%b d3=%b",
              $time, a, b, d0, d1, d2, d3);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    #10 $finish;
  end
endmodule
