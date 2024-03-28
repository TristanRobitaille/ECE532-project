module level_3 
    (
    input clk_100MHz,
    input rstn,
    input signed [15:0] in_0,
    input signed [15:0] in_1,
    input signed [15:0] in_2,
    input signed [15:0] in_3,
    input signed [15:0] in_4,
    input signed [15:0] in_5,
    input signed [15:0] in_6,
    input signed [15:0] in_7,
    input signed [15:0] in_8,
    input signed [15:0] in_9,
    input signed [15:0] in_10,
    input signed [15:0] in_11,
    input signed [15:0] in_12,
    input signed [15:0] in_13,
    input signed [15:0] in_14,
    input signed [15:0] in_15,
    input signed [15:0] in_16,
    input signed [15:0] in_17,
    input signed [15:0] in_18,
    input signed [15:0] in_19,
    input signed [15:0] in_20,
    input signed [15:0] in_21,
    input signed [15:0] in_22,
    input signed [15:0] in_23,
    input signed [15:0] in_24,
    input signed [15:0] in_25,
    input signed [15:0] in_26,
    input signed [15:0] in_27,
    input signed [15:0] in_28,
    input signed [15:0] in_29,
    input signed [15:0] in_30,
    input signed [15:0] in_31,

    //img:
    input signed [15:0] in_i_0,
    input signed [15:0] in_i_1,
    input signed [15:0] in_i_2,
    input signed [15:0] in_i_3,
    input signed [15:0] in_i_4,
    input signed [15:0] in_i_5,
    input signed [15:0] in_i_6,
    input signed [15:0] in_i_7,
    input signed [15:0] in_i_8,
    input signed [15:0] in_i_9,
    input signed [15:0] in_i_10,
    input signed [15:0] in_i_11,
    input signed [15:0] in_i_12,
    input signed [15:0] in_i_13,
    input signed [15:0] in_i_14,
    input signed [15:0] in_i_15,
    input signed [15:0] in_i_16,
    input signed [15:0] in_i_17,
    input signed [15:0] in_i_18,
    input signed [15:0] in_i_19,
    input signed [15:0] in_i_20,
    input signed [15:0] in_i_21,
    input signed [15:0] in_i_22,
    input signed [15:0] in_i_23,
    input signed [15:0] in_i_24,
    input signed [15:0] in_i_25,
    input signed [15:0] in_i_26,
    input signed [15:0] in_i_27,
    input signed [15:0] in_i_28,
    input signed [15:0] in_i_29,
    input signed [15:0] in_i_30,
    input signed [15:0] in_i_31,
    input valid,

    //twiddle only needs 4:
    input  signed [15:0] twd_0_r,
    input  signed [15:0] twd_0_i,
    input  signed [15:0] twd_4_r,
    input signed [15:0] twd_4_i,
    input  signed [15:0] twd_8_r,
    input signed [15:0] twd_8_i,
    input  signed [15:0] twd_12_r,
    input signed [15:0] twd_12_i,
    //real
 //real
    output signed [15:0] out_0,
    output signed [15:0] out_1,
    output signed [15:0] out_2,
    output signed [15:0] out_3,
    output signed [15:0] out_4,
    output signed [15:0] out_5,
    output signed [15:0] out_6,
    output signed [15:0] out_7,
    output signed [15:0] out_8,
    output signed [15:0] out_9,
    output signed [15:0] out_10,
    output signed [15:0] out_11,
    output signed [15:0] out_12,
    output signed [15:0] out_13,
    output signed [15:0] out_14,
    output signed [15:0] out_15,
    output signed [15:0] out_16,
    output signed [15:0] out_17,
    output signed [15:0] out_18,
    output signed [15:0] out_19,
    output signed [15:0] out_20,
    output signed [15:0] out_21,
    output signed [15:0] out_22,
    output signed [15:0] out_23,
    output signed [15:0] out_24,
    output signed [15:0] out_25,
    output signed [15:0] out_26,
    output signed [15:0] out_27,
    output signed [15:0] out_28,
    output signed [15:0] out_29,
    output signed [15:0] out_30,
    output signed [15:0] out_31,
    //img:
    output signed [15:0] out_i_0,
    output signed [15:0] out_i_1,
    output signed [15:0] out_i_2,
    output signed [15:0] out_i_3,
    output signed [15:0] out_i_4,
    output signed [15:0] out_i_5,
    output signed [15:0] out_i_6,
    output signed [15:0] out_i_7,
    output signed [15:0] out_i_8,
    output signed [15:0] out_i_9,
    output signed [15:0] out_i_10,
    output signed [15:0] out_i_11,
    output signed [15:0] out_i_12,
    output signed [15:0] out_i_13,
    output signed [15:0] out_i_14,
    output signed [15:0] out_i_15,
    output signed [15:0] out_i_16,
    output signed [15:0] out_i_17,
    output signed [15:0] out_i_18,
    output signed [15:0] out_i_19,
    output signed [15:0] out_i_20,
    output signed [15:0] out_i_21,
    output signed [15:0] out_i_22,
    output signed [15:0] out_i_23,
    output signed [15:0] out_i_24,
    output signed [15:0] out_i_25,
    output signed [15:0] out_i_26,
    output signed [15:0] out_i_27,
    output signed [15:0] out_i_28,
    output signed [15:0] out_i_29,
    output signed [15:0] out_i_30,
    output signed [15:0] out_i_31,
    output o_valid
);
    wire [3:0] o_valid_i;
    assign o_valid = o_valid_i[3];//(o_valid_i == 4'hF) ? 1'b1 : 1'b0;
    //multiple instances of radix_2:
    radix_8_butterfly B_1(
        .clk_100MHz(clk_100MHz),
        .rstn(rstn),
        .A_real_I(in_0[15:0]),
        .A_img_I(in_i_0[15:0]),
        .B_real_I(in_4[15:0]),
        .B_img_I(in_i_4[15:0]),
        .A_real_II(in_1[15:0]),
        .A_img_II(in_i_1[15:0]),
        .B_real_II(in_5[15:0]),
        .B_img_II(in_i_5[15:0]),
        .A_real_III(in_2[15:0]),
        .A_img_III(in_i_2[15:0]),
        .B_real_III(in_6[15:0]),
        .B_img_III(in_i_6[15:0]),
        .A_real_IV(in_3[15:0]),
        .A_img_IV(in_i_3[15:0]),
        .B_real_IV(in_7[15:0]),
        .B_img_IV(in_i_7[15:0]),
        .tf_0_r(twd_0_r),
        .tf_0_i(twd_0_i),
        .tf_4_r(twd_4_r),
        .tf_4_i(twd_4_i),
        .tf_8_r(twd_8_r),
        .tf_8_i(twd_8_i),
        .tf_12_r(twd_12_r),
        .tf_12_i(twd_12_i),
        .valid(valid),
        .A_real_o_I(out_0),
        .A_img_o_I(out_i_0),
        .B_real_o_I(out_4),
        .B_img_o_I(out_i_4),
        .A_real_o_II(out_1),
        .A_img_o_II(out_i_1),
        .B_real_o_II(out_5),
        .B_img_o_II(out_i_5),
        .A_real_o_III(out_2),
        .A_img_o_III(out_i_2),
        .B_real_o_III(out_6),
        .B_img_o_III(out_i_6),
        .A_real_o_IV(out_3),
        .A_img_o_IV(out_i_3),
        .B_real_o_IV(out_7),
        .B_img_o_IV(out_i_7),
        .o_valid( o_valid_i[0])
    );


    radix_8_butterfly B_2(
        .clk_100MHz(clk_100MHz),
        .rstn(rstn),
        .A_real_I(in_8[15:0]),
        .A_img_I(in_i_8[15:0]),
        .B_real_I(in_12[15:0]),
        .B_img_I(in_i_12[15:0]),
        .A_real_II(in_9[15:0]),
        .A_img_II(in_i_9[15:0]),
        .B_real_II(in_13[15:0]),
        .B_img_II(in_i_13[15:0]),
        .A_real_III(in_10[15:0]),
        .A_img_III(in_i_10[15:0]),
        .B_real_III(in_14[15:0]),
        .B_img_III(in_i_14[15:0]),
        .A_real_IV(in_11[15:0]),
        .A_img_IV(in_i_11[15:0]),
        .B_real_IV(in_15[15:0]),
        .B_img_IV(in_i_15[15:0]),
        .tf_0_r(twd_0_r),
        .tf_0_i(twd_0_i),
        .tf_4_r(twd_4_r),
        .tf_4_i(twd_4_i),
        .tf_8_r(twd_8_r),
        .tf_8_i(twd_8_i),
        .tf_12_r(twd_12_r),
        .tf_12_i(twd_12_i),
        .valid(valid),
        .A_real_o_I(out_8),
        .A_img_o_I(out_i_8),
        .B_real_o_I(out_12),
        .B_img_o_I(out_i_12),
        .A_real_o_II(out_9),
        .A_img_o_II(out_i_9),
        .B_real_o_II(out_13),
        .B_img_o_II(out_i_13),
        .A_real_o_III(out_10),
        .A_img_o_III(out_i_10),
        .B_real_o_III(out_14),
        .B_img_o_III(out_i_14),
        .A_real_o_IV(out_11),
        .A_img_o_IV(out_i_11),
        .B_real_o_IV(out_15),
        .B_img_o_IV(out_i_15),
        .o_valid( o_valid_i[1])
    );

    radix_8_butterfly B_3(
        .clk_100MHz(clk_100MHz),
        .rstn(rstn),
        .A_real_I(in_16[15:0]),
        .A_img_I(in_i_16[15:0]),
        .B_real_I(in_20[15:0]),
        .B_img_I(in_i_20[15:0]),
        .A_real_II(in_17[15:0]),
        .A_img_II(in_i_17[15:0]),
        .B_real_II(in_21[15:0]),
        .B_img_II(in_i_21[15:0]),
        .A_real_III(in_18[15:0]),
        .A_img_III(in_i_18[15:0]),
        .B_real_III(in_22[15:0]),
        .B_img_III(in_i_22[15:0]),
        .A_real_IV(in_19[15:0]),
        .A_img_IV(in_i_19[15:0]),
        .B_real_IV(in_23[15:0]),
        .B_img_IV(in_i_23[15:0]),
        .tf_0_r(twd_0_r),
        .tf_0_i(twd_0_i),
        .tf_4_r(twd_4_r),
        .tf_4_i(twd_4_i),
        .tf_8_r(twd_8_r),
        .tf_8_i(twd_8_i),
        .tf_12_r(twd_12_r),
        .tf_12_i(twd_12_i),
        .valid(valid),
        .A_real_o_I(out_16),
        .A_img_o_I(out_i_16),
        .B_real_o_I(out_20),
        .B_img_o_I(out_i_20),
        .A_real_o_II(out_17),
        .A_img_o_II(out_i_17),
        .B_real_o_II(out_21),
        .B_img_o_II(out_i_21),
        .A_real_o_III(out_18),
        .A_img_o_III(out_i_18),
        .B_real_o_III(out_22),
        .B_img_o_III(out_i_22),
        .A_real_o_IV(out_19),
        .A_img_o_IV(out_i_19),
        .B_real_o_IV(out_23),
        .B_img_o_IV(out_i_23),
        .o_valid( o_valid_i[2])
    );

    radix_8_butterfly B_4(
        .clk_100MHz(clk_100MHz),
        .rstn(rstn),
        .A_real_I(in_24[15:0]),
        .A_img_I(in_i_24[15:0]),
        .B_real_I(in_28[15:0]),
        .B_img_I(in_i_28[15:0]),
        .A_real_II(in_25[15:0]),
        .A_img_II(in_i_25[15:0]),
        .B_real_II(in_29[15:0]),
        .B_img_II(in_i_29[15:0]),
        .A_real_III(in_26[15:0]),
        .A_img_III(in_i_26[15:0]),
        .B_real_III(in_30[15:0]),
        .B_img_III(in_i_30[15:0]),
        .A_real_IV(in_27[15:0]),
        .A_img_IV(in_i_27[15:0]),
        .B_real_IV(in_31[15:0]),
        .B_img_IV(in_i_31[15:0]),
        .tf_0_r(twd_0_r),
        .tf_0_i(twd_0_i),
        .tf_4_r(twd_4_r),
        .tf_4_i(twd_4_i),
        .tf_8_r(twd_8_r),
        .tf_8_i(twd_8_i),
        .tf_12_r(twd_12_r),
        .tf_12_i(twd_12_i),
        .valid(valid),
        .A_real_o_I(out_24),
        .A_img_o_I(out_i_24),
        .B_real_o_I(out_28),
        .B_img_o_I(out_i_28),
        .A_real_o_II(out_25),
        .A_img_o_II(out_i_25),
        .B_real_o_II(out_29),
        .B_img_o_II(out_i_29),
        .A_real_o_III(out_26),
        .A_img_o_III(out_i_26),
        .B_real_o_III(out_30),
        .B_img_o_III(out_i_30),
        .A_real_o_IV(out_27),
        .A_img_o_IV(out_i_27),
        .B_real_o_IV(out_31),
        .B_img_o_IV(out_i_31),
        .o_valid(o_valid_i[3])
    );
    
endmodule