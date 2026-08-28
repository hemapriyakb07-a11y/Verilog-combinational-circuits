module decoder2to4(a, b, d0, d1, d2, d3);
  input a, b;
  output d0, d1, d2, d3;

  wire na, nb;

  not g1(na, a);
  not g2(nb, b);

  and g3(d0, na, nb);
  and g4(d1, na, b);
  and g5(d2, a, nb);
  and g6(d3, a, b);
endmodule
