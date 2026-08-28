module or_using_mux_tb;
  reg x, y;
  wire f;

  or_using_mux uut(x, y, f);

  initial begin
    $dumpfile("or_using_mux.vcd");
    $dumpvars(0, or_using_mux_tb);

    $monitor("t=%0t | x=%b y=%b | f=%b",
              $time, x, y, f);

    x=0; y=0; #10;
    x=0; y=1; #10;
    x=1; y=0; #10;
    x=1; y=1; #10;

    #10 $finish;
  end
endmodule
