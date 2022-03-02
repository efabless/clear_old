

module cbx_1__2_
( chanx_left_in, chanx_right_in, ccff_head, chanx_left_out, chanx_right_out, top_grid_pin_0_, bottom_grid_pin_0_, bottom_grid_pin_1_, bottom_grid_pin_2_, bottom_grid_pin_3_, bottom_grid_pin_4_, bottom_grid_pin_5_, bottom_grid_pin_6_, bottom_grid_pin_7_, bottom_grid_pin_8_, bottom_grid_pin_9_, bottom_grid_pin_10_, bottom_grid_pin_11_, bottom_grid_pin_12_, bottom_grid_pin_13_, bottom_grid_pin_14_, bottom_grid_pin_15_, ccff_tail, IO_ISOL_N, gfpga_pad_EMBEDDED_IO_HD_SOC_IN, gfpga_pad_EMBEDDED_IO_HD_SOC_OUT, gfpga_pad_EMBEDDED_IO_HD_SOC_DIR, bottom_width_0_height_0__pin_0_, bottom_width_0_height_0__pin_1_upper, bottom_width_0_height_0__pin_1_lower, SC_IN_TOP, SC_OUT_BOT, SC_IN_BOT, SC_OUT_TOP, prog_clk_0_S_in, prog_clk_0_W_out ); 
  input [19:0] chanx_left_in;
  input [19:0] chanx_right_in;
  input [0:0] ccff_head;
  output [19:0] chanx_left_out;
  output [19:0] chanx_right_out;
  output [0:0] top_grid_pin_0_;
  output [0:0] bottom_grid_pin_0_;
  output [0:0] bottom_grid_pin_1_;
  output [0:0] bottom_grid_pin_2_;
  output [0:0] bottom_grid_pin_3_;
  output [0:0] bottom_grid_pin_4_;
  output [0:0] bottom_grid_pin_5_;
  output [0:0] bottom_grid_pin_6_;
  output [0:0] bottom_grid_pin_7_;
  output [0:0] bottom_grid_pin_8_;
  output [0:0] bottom_grid_pin_9_;
  output [0:0] bottom_grid_pin_10_;
  output [0:0] bottom_grid_pin_11_;
  output [0:0] bottom_grid_pin_12_;
  output [0:0] bottom_grid_pin_13_;
  output [0:0] bottom_grid_pin_14_;
  output [0:0] bottom_grid_pin_15_;
  output [0:0] ccff_tail;
  input [0:0] IO_ISOL_N;
  input [0:0] gfpga_pad_EMBEDDED_IO_HD_SOC_IN;
  output [0:0] gfpga_pad_EMBEDDED_IO_HD_SOC_OUT;
  output [0:0] gfpga_pad_EMBEDDED_IO_HD_SOC_DIR;
  input [0:0] bottom_width_0_height_0__pin_0_;
  output [0:0] bottom_width_0_height_0__pin_1_upper;
  output [0:0] bottom_width_0_height_0__pin_1_lower;
  input SC_IN_TOP;
  output SC_OUT_BOT;
  input SC_IN_BOT;
  output SC_OUT_TOP;
  input prog_clk_0_S_in;
  output prog_clk_0_W_out;

  wire [0:3] mux_bottom_ipin_0_undriven_sram_inv;
  wire [0:3] mux_top_ipin_0_undriven_sram_inv;
  wire [0:3] mux_top_ipin_10_undriven_sram_inv;
  wire [0:3] mux_top_ipin_11_undriven_sram_inv;
  wire [0:3] mux_top_ipin_12_undriven_sram_inv;
  wire [0:3] mux_top_ipin_13_undriven_sram_inv;
  wire [0:3] mux_top_ipin_14_undriven_sram_inv;
  wire [0:3] mux_top_ipin_15_undriven_sram_inv;
  wire [0:3] mux_top_ipin_1_undriven_sram_inv;
  wire [0:3] mux_top_ipin_2_undriven_sram_inv;
  wire [0:3] mux_top_ipin_3_undriven_sram_inv;
  wire [0:3] mux_top_ipin_4_undriven_sram_inv;
  wire [0:3] mux_top_ipin_5_undriven_sram_inv;
  wire [0:3] mux_top_ipin_6_undriven_sram_inv;
  wire [0:3] mux_top_ipin_7_undriven_sram_inv;
  wire [0:3] mux_top_ipin_8_undriven_sram_inv;
  wire [0:3] mux_top_ipin_9_undriven_sram_inv;
  wire [0:3] mux_tree_tapbuf_size10_0_sram;
  wire [0:3] mux_tree_tapbuf_size10_1_sram;
  wire [0:3] mux_tree_tapbuf_size10_2_sram;
  wire [0:3] mux_tree_tapbuf_size10_3_sram;
  wire [0:3] mux_tree_tapbuf_size10_4_sram;
  wire [0:3] mux_tree_tapbuf_size10_5_sram;
  wire [0:3] mux_tree_tapbuf_size10_6_sram;
  wire [0:3] mux_tree_tapbuf_size10_7_sram;
  wire [0:3] mux_tree_tapbuf_size10_8_sram;
  wire [0:0] mux_tree_tapbuf_size10_mem_0_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_1_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_2_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_3_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_4_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_5_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_6_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size10_mem_7_ccff_tail;
  wire [0:3] mux_tree_tapbuf_size8_0_sram;
  wire [0:3] mux_tree_tapbuf_size8_1_sram;
  wire [0:3] mux_tree_tapbuf_size8_2_sram;
  wire [0:3] mux_tree_tapbuf_size8_3_sram;
  wire [0:3] mux_tree_tapbuf_size8_4_sram;
  wire [0:3] mux_tree_tapbuf_size8_5_sram;
  wire [0:3] mux_tree_tapbuf_size8_6_sram;
  wire [0:3] mux_tree_tapbuf_size8_7_sram;
  wire [0:0] mux_tree_tapbuf_size8_mem_0_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_1_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_2_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_3_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_4_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_5_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_6_ccff_tail;
  wire [0:0] mux_tree_tapbuf_size8_mem_7_ccff_tail;
  wire ccff_tail_mid;
  wire prog_clk_0;
  wire [0:0] prog_clk;
  assign chanx_right_out[0] = chanx_left_in[0];
  assign chanx_right_out[1] = chanx_left_in[1];
  assign chanx_right_out[2] = chanx_left_in[2];
  assign chanx_right_out[3] = chanx_left_in[3];
  assign chanx_right_out[4] = chanx_left_in[4];
  assign chanx_right_out[5] = chanx_left_in[5];
  assign chanx_right_out[6] = chanx_left_in[6];
  assign chanx_right_out[7] = chanx_left_in[7];
  assign chanx_right_out[8] = chanx_left_in[8];
  assign chanx_right_out[9] = chanx_left_in[9];
  assign chanx_right_out[10] = chanx_left_in[10];
  assign chanx_right_out[11] = chanx_left_in[11];
  assign chanx_right_out[12] = chanx_left_in[12];
  assign chanx_right_out[13] = chanx_left_in[13];
  assign chanx_right_out[14] = chanx_left_in[14];
  assign chanx_right_out[15] = chanx_left_in[15];
  assign chanx_right_out[16] = chanx_left_in[16];
  assign chanx_right_out[17] = chanx_left_in[17];
  assign chanx_right_out[18] = chanx_left_in[18];
  assign chanx_right_out[19] = chanx_left_in[19];
  assign chanx_left_out[0] = chanx_right_in[0];
  assign chanx_left_out[1] = chanx_right_in[1];
  assign chanx_left_out[2] = chanx_right_in[2];
  assign chanx_left_out[3] = chanx_right_in[3];
  assign chanx_left_out[4] = chanx_right_in[4];
  assign chanx_left_out[5] = chanx_right_in[5];
  assign chanx_left_out[6] = chanx_right_in[6];
  assign chanx_left_out[7] = chanx_right_in[7];
  assign chanx_left_out[8] = chanx_right_in[8];
  assign chanx_left_out[9] = chanx_right_in[9];
  assign chanx_left_out[10] = chanx_right_in[10];
  assign chanx_left_out[11] = chanx_right_in[11];
  assign chanx_left_out[12] = chanx_right_in[12];
  assign chanx_left_out[13] = chanx_right_in[13];
  assign chanx_left_out[14] = chanx_right_in[14];
  assign chanx_left_out[15] = chanx_right_in[15];
  assign chanx_left_out[16] = chanx_right_in[16];
  assign chanx_left_out[17] = chanx_right_in[17];
  assign chanx_left_out[18] = chanx_right_in[18];
  assign chanx_left_out[19] = chanx_right_in[19];
  assign bottom_width_0_height_0__pin_1_lower[0] = bottom_width_0_height_0__pin_1_upper[0];
  assign SC_OUT_BOT = SC_IN_TOP;
  assign SC_OUT_TOP = SC_IN_BOT;
 assign prog_clk  = prog_clk_0;

  mux_tree_tapbuf_size10
  mux_bottom_ipin_0
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16] }),
    .sram(mux_tree_tapbuf_size10_0_sram[0:3]),
    .sram_inv(mux_bottom_ipin_0_undriven_sram_inv[0:3]),
    .out(top_grid_pin_0_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_0
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17] }),
    .sram(mux_tree_tapbuf_size10_1_sram[0:3]),
    .sram_inv(mux_top_ipin_0_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_0_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_3
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14] }),
    .sram(mux_tree_tapbuf_size10_2_sram[0:3]),
    .sram_inv(mux_top_ipin_3_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_3_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_4
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[5], chanx_right_in[5], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15] }),
    .sram(mux_tree_tapbuf_size10_3_sram[0:3]),
    .sram_inv(mux_top_ipin_4_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_4_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_7
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18] }),
    .sram(mux_tree_tapbuf_size10_4_sram[0:3]),
    .sram_inv(mux_top_ipin_7_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_7_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_8
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19] }),
    .sram(mux_tree_tapbuf_size10_5_sram[0:3]),
    .sram_inv(mux_top_ipin_8_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_8_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_11
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[16], chanx_right_in[16] }),
    .sram(mux_tree_tapbuf_size10_6_sram[0:3]),
    .sram_inv(mux_top_ipin_11_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_11_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_12
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[17], chanx_right_in[17] }),
    .sram(mux_tree_tapbuf_size10_7_sram[0:3]),
    .sram_inv(mux_top_ipin_12_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_12_[0])
  );


  mux_tree_tapbuf_size10
  mux_top_ipin_15
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16] }),
    .sram(mux_tree_tapbuf_size10_8_sram[0:3]),
    .sram_inv(mux_top_ipin_15_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_15_[0])
  );


  mux_tree_tapbuf_size10_mem
  mem_bottom_ipin_0
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(ccff_head[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_0_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_0_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_0
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_0_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_1_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_1_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_3
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_1_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_2_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_2_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_4
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_2_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_3_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_3_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_7
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_3_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_4_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_4_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_8
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_4_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_5_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_5_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_11
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_5_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_6_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_6_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_12
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_6_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size10_mem_7_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size10_7_sram[0:3])
  );


  mux_tree_tapbuf_size10_mem
  mem_top_ipin_15
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_7_ccff_tail[0]),
    .ccff_tail(ccff_tail_mid),
    .mem_out(mux_tree_tapbuf_size10_8_sram[0:3])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_1
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[6], chanx_right_in[6], chanx_left_in[14], chanx_right_in[14] }),
    .sram(mux_tree_tapbuf_size8_0_sram[0:3]),
    .sram_inv(mux_top_ipin_1_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_1_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_2
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[7], chanx_right_in[7], chanx_left_in[15], chanx_right_in[15] }),
    .sram(mux_tree_tapbuf_size8_1_sram[0:3]),
    .sram_inv(mux_top_ipin_2_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_2_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_5
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[10], chanx_right_in[10], chanx_left_in[18], chanx_right_in[18] }),
    .sram(mux_tree_tapbuf_size8_2_sram[0:3]),
    .sram_inv(mux_top_ipin_5_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_5_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_6
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[11], chanx_right_in[11], chanx_left_in[19], chanx_right_in[19] }),
    .sram(mux_tree_tapbuf_size8_3_sram[0:3]),
    .sram_inv(mux_top_ipin_6_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_6_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_9
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[6], chanx_right_in[6], chanx_left_in[14], chanx_right_in[14] }),
    .sram(mux_tree_tapbuf_size8_4_sram[0:3]),
    .sram_inv(mux_top_ipin_9_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_9_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_10
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[7], chanx_right_in[7], chanx_left_in[15], chanx_right_in[15] }),
    .sram(mux_tree_tapbuf_size8_5_sram[0:3]),
    .sram_inv(mux_top_ipin_10_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_10_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_13
  (
    .in({ chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[10], chanx_right_in[10], chanx_left_in[18], chanx_right_in[18] }),
    .sram(mux_tree_tapbuf_size8_6_sram[0:3]),
    .sram_inv(mux_top_ipin_13_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_13_[0])
  );


  mux_tree_tapbuf_size8
  mux_top_ipin_14
  (
    .in({ chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[11], chanx_right_in[11], chanx_left_in[19], chanx_right_in[19] }),
    .sram(mux_tree_tapbuf_size8_7_sram[0:3]),
    .sram_inv(mux_top_ipin_14_undriven_sram_inv[0:3]),
    .out(bottom_grid_pin_14_[0])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_1
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_1_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_0_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_0_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_2
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_0_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_1_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_1_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_5
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_3_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_2_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_2_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_6
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_2_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_3_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_3_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_9
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_5_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_4_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_4_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_10
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_4_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_5_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_5_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_13
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size10_mem_7_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_6_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_6_sram[0:3])
  );


  mux_tree_tapbuf_size8_mem
  mem_top_ipin_14
  (
    .prog_clk(prog_clk[0]),
    .ccff_head(mux_tree_tapbuf_size8_mem_6_ccff_tail[0]),
    .ccff_tail(mux_tree_tapbuf_size8_mem_7_ccff_tail[0]),
    .mem_out(mux_tree_tapbuf_size8_7_sram[0:3])
  );


  logical_tile_io_mode_io_
  logical_tile_io_mode_io__0
  (
    .IO_ISOL_N(IO_ISOL_N[0]),
    .prog_clk(prog_clk[0]),
    .gfpga_pad_EMBEDDED_IO_HD_SOC_IN(gfpga_pad_EMBEDDED_IO_HD_SOC_IN[0]),
    .gfpga_pad_EMBEDDED_IO_HD_SOC_OUT(gfpga_pad_EMBEDDED_IO_HD_SOC_OUT[0]),
    .gfpga_pad_EMBEDDED_IO_HD_SOC_DIR(gfpga_pad_EMBEDDED_IO_HD_SOC_DIR[0]),
    .io_outpad(bottom_width_0_height_0__pin_0_[0]),
    .ccff_head(ccff_tail_mid),
    .io_inpad(bottom_width_0_height_0__pin_1_upper[0]),
    .ccff_tail(ccff_tail[0])
  );


  sky130_fd_sc_hd__buf_8
  prog_clk_0_FTB00
  (
    .A(prog_clk_0_S_in),
    .X(prog_clk_0)
  );


  sky130_fd_sc_hd__buf_4
  prog_clk_0_W_FTB01
  (
    .A(prog_clk_0_S_in),
    .X(prog_clk_0_W_out)
  );


endmodule

