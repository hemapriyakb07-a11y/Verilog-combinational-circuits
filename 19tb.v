module xor_using_mux_tb;
  reg a, b;
  wire f;

  xor_using_mux uut(a, b, f);

  initial begin
    $dumpfile("xor_using_mux.vcd");
    $dumpvars(0, xor_using_mux_tb);

    $monitor("t=%0t | a=%b b=%b | f=%b",
              $time, a, b, f);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    #10 $finish;
  end
endmodule
