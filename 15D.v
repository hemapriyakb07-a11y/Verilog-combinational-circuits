module decoder2to4(a, b, en, d0, d1, d2, d3);
  input a, b, en;
  output d0, d1, d2, d3;

  assign d0 = en & ~a & ~b;
  assign d1 = en & ~a &  b;
  assign d2 = en &  a & ~b;
  assign d3 = en &  a &  b;
endmodule

module decoder3to8(a, b, c, en, d0, d1, d2, d3, d4, d5, d6, d7);
  input a, b, c, en;
  output d0, d1, d2, d3, d4, d5, d6, d7;

  wire en0, en1;

  assign en0 = en & ~c;
  assign en1 = en &  c;

  decoder2to4 dec_low(a, b, en0, d0, d1, d2, d3);
  decoder2to4 dec_high(a, b, en1, d4, d5, d6, d7);
endmodule
