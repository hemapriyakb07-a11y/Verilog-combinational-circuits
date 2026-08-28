module encoder8to3_tb;
  reg d0, d1, d2, d3, d4, d5, d6, d7;
  wire y2, y1, y0;

  encoder8to3 uut(d0, d1, d2, d3, d4, d5, d6, d7, y2, y1, y0);

  initial begin
    $dumpfile("encoder8to3.vcd");
    $dumpvars(0, encoder8to3_tb);

    $monitor("t=%0t | d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b | y2=%b y1=%b y0=%b",
              $time, d0, d1, d2, d3, d4, d5, d6, d7, y2, y1, y0);

    d0=1; d1=0; d2=0; d3=0; d4=0; d5=0; d6=0; d7=0; #10;
    d0=0; d1=1; d2=0; d3=0; d4=0; d5=0; d6=0; d7=0; #10;
    d0=0; d1=0; d2=1; d3=0; d4=0; d5=0; d6=0; d7=0; #10;
    d0=0; d1=0; d2=0; d3=1; d4=0; d5=0; d6=0; d7=0; #10;
    d0=0; d1=0; d2=0; d3=0; d4=1; d5=0; d6=0; d7=0; #10;
    d0=0; d1=0; d2=0; d3=0; d4=0; d5=1; d6=0; d7=0; #10;
    d0=0; d1=0; d2=0; d3=0; d4=0; d5=0; d6=1; d7=0; #10;
    d0=0; d1=0; d2=0; d3=0; d4=0; d5=0; d6=0; d7=1; #10;

    #10 $finish;
  end
endmodule
