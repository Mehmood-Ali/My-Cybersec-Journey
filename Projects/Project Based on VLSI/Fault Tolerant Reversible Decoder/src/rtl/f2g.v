// Feynman Double Gate (F2G)
// Inputs: a, b, c
// Outputs: p = a, q = a ^ b, r = a ^ c
// 3x3 reversible gate (used as a building block)

module f2g (
    input  wire a,
    input  wire b,
    input  wire c,
    output wire p,
    output wire q,
    output wire r
);
    assign p = a;
    assign q = a ^ b;
    assign r = a ^ c;
endmodule
