module bin2gray_2bit_tb;
  reg b1, b0;
  wire g1, g0;

  bin2gray_2bit uut(b1, b0, g1, g0);

  initial begin
    $dumpfile("bin2gray_2bit.vcd");
    $dumpvars(0, bin2gray_2bit_tb);

    $monitor("t=%0t | b1=%b b0=%b | g1=%b g0=%b",
              $time, b1, b0, g1, g0);

    b1=0; b0=0; #10;  
    b1=0; b0=1; #10;  
    b1=1; b0=0; #10;  
    b1=1; b0=1; #10;  

    #10 $finish;
  end
endmodule
