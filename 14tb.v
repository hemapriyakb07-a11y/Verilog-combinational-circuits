module full_subtractor_tb;
  reg a, b, bin;
  wire diff, bout;

  full_subtractor uut(a, b, bin, diff, bout);

  initial begin
    $dumpfile("fullsubtractor_struct.vcd");
    $dumpvars(0, full_subtractor_tb);

    $monitor("t=%0t | a=%b b=%b bin=%b | diff=%b bout=%b",
              $time, a, b, bin, diff, bout);

    {a,b,bin} = 3'b000; #10;
    {a,b,bin} = 3'b001; #10;
    {a,b,bin} = 3'b010; #10;
    {a,b,bin} = 3'b011; #10;
    {a,b,bin} = 3'b100; #10;
    {a,b,bin} = 3'b101; #10;
    {a,b,bin} = 3'b110; #10;
    {a,b,bin} = 3'b111; #10;

    #10 $finish;
  end
endmodule
