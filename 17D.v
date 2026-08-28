module comparator4bit(a, b, A_gt_B, A_eq_B, A_lt_B);
  input [3:0] a, b;
  output A_gt_B, A_eq_B, A_lt_B;

  assign A_eq_B = ~(a[3]^b[3]) & ~(a[2]^b[2]) & ~(a[1]^b[1]) & ~(a[0]^b[0]);

  assign A_gt_B = (a[3] & ~b[3]) |
                  (~(a[3]^b[3]) & a[2] & ~b[2]) |
                  (~(a[3]^b[3]) & ~(a[2]^b[2]) & a[1] & ~b[1]) |
                  (~(a[3]^b[3]) & ~(a[2]^b[2]) & ~(a[1]^b[1]) & a[0] & ~b[0]);

  assign A_lt_B = (~a[3] & b[3]) |
                  (~(a[3]^b[3]) & ~a[2] & b[2]) |
                  (~(a[3]^b[3]) & ~(a[2]^b[2]) & ~a[1] & b[1]) |
                  (~(a[3]^b[3]) & ~(a[2]^b[2]) & ~(a[1]^b[1]) & ~a[0] & b[0]);
endmodule
