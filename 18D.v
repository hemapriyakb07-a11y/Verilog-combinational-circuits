module mux2to1(a, b, sel, y);
  input a, b, sel;
  output y;

  assign y = sel ? b : a;
endmodule

module or_using_mux(x, y, f);
  input x, y;
  output f;

  mux2to1 m1(1'b1, y, x, f);
endmodule
