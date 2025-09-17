// Fredkin Gate (FRG)
// Inputs: ctrl, i1, i2
// Outputs: ctrl (passed), o1, o2
// If ctrl == 1 -> swap(i1, i2); else pass through
// 3x3 reversible controlled-swap gate

module frg (
    input  wire ctrl,
    input  wire i1,
    input  wire i2,
    output wire octrl,
    output wire o1,
    output wire o2
);
    assign octrl = ctrl;
    assign o1 = (~ctrl & i1) | (ctrl & i2);
    assign o2 = (~ctrl & i2) | (ctrl & i1);
endmodule
