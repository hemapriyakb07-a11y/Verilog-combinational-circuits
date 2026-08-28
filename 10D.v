module bin2gray_2bit(b1, b0, g1, g0);
  input b1, b0;
  output g1, g0;

  assign g1 = b1;          
  assign g0 = b1 ^ b0;     
endmodule
