module half_subtractor_tb;
  reg a, b;
  wire diff, borrow;

  half_subtractor uut(a, b, diff, borrow);

  initial begin
    $dumpfile("halfsubtractor.vcd");
    $dumpvars(0, half_subtractor_tb);

    $monitor("t=%0t | a=%b b=%b | diff=%b borrow=%b", $time, a, b, diff, borrow);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    #10 $finish;
  end
endmodule
