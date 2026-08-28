module decoder3to8_tb;
  reg a, b, c, en;
  wire d0, d1, d2, d3, d4, d5, d6, d7;

  decoder3to8 uut(a, b, c, en, d0, d1, d2, d3, d4, d5, d6, d7);

  initial begin
    $dumpfile("decoder3to8.vcd");
    $dumpvars(0, decoder3to8_tb);

    $monitor("t=%0t | a=%b b=%b c=%b en=%b | d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b",
              $time, a, b, c, en, d0, d1, d2, d3, d4, d5, d6, d7);

    en=1;

    {c,a,b} = 3'b000; #10;
    {c,a,b} = 3'b001; #10;
    {c,a,b} = 3'b010; #10;
    {c,a,b} = 3'b011; #10;
    {c,a,b} = 3'b100; #10;
    {c,a,b} = 3'b101; #10;
    {c,a,b} = 3'b110; #10;
    {c,a,b} = 3'b111; #10;

    #10 $finish;
  end
endmodule
