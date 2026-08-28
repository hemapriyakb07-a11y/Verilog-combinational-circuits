module mux2to1_gate(a, b, sel, y);
  input a, b, sel;
  output y;

  wire nsel, w1, w2;

  not g1(nsel, sel);
  and g2(w1, a, nsel);
  and g3(w2, b, sel);
  or  g4(y, w1, w2);
endmodule
