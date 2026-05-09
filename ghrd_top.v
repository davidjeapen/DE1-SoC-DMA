// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jun 17 20:35:29 2013
// ============================================================================

`define ENABLE_HPS 


module ghrd_top (

    //VERSÃO COM O CLOCK DO HPS ALTERADA PARA 925.
    //NECESSÁRIO ALTERAR NO QSYS PARA 800, GERAR O HDL, E ACTUALIZA-LO NESTE DESIGN


    ///////// ADC /////////
    inout  ADC_CS_N,
    output ADC_DIN,
    input  ADC_DOUT,
    output ADC_SCLK,

    ///////// AUD /////////
    input  AUD_ADCDAT,
    inout  AUD_ADCLRCK,
    inout  AUD_BCLK,
    output AUD_DACDAT,
    inout  AUD_DACLRCK,
    output AUD_XCK,

    ///////// CLOCK2 /////////
    input CLOCK2_50,

    ///////// CLOCK3 /////////
    input CLOCK3_50,

    ///////// CLOCK4 /////////
    input CLOCK4_50,

    ///////// CLOCK /////////
    input CLOCK_50,

    ///////// DRAM /////////
    output [12:0] DRAM_ADDR,
    output [ 1:0] DRAM_BA,
    output        DRAM_CAS_N,
    output        DRAM_CKE,
    output        DRAM_CLK,
    output        DRAM_CS_N,
    inout  [15:0] DRAM_DQ,
    output        DRAM_LDQM,
    output        DRAM_RAS_N,
    output        DRAM_UDQM,
    output        DRAM_WE_N,

    ///////// FAN /////////
    output FAN_CTRL,

    ///////// FPGA /////////
    output FPGA_I2C_SCLK,
    inout  FPGA_I2C_SDAT,

    ///////// GPIO /////////
    inout [35:0] GPIO_0,
    inout [35:0] GPIO_1,


    ///////// HEX0 /////////
    output [6:0] HEX0,

    ///////// HEX1 /////////
    output [6:0] HEX1,

    ///////// HEX2 /////////
    output [6:0] HEX2,

    ///////// HEX3 /////////
    output [6:0] HEX3,

    ///////// HEX4 /////////
    output [6:0] HEX4,

    ///////// HEX5 /////////
    output [6:0] HEX5,

`ifdef ENABLE_HPS
    ///////// HPS /////////
    inout         HPS_CONV_USB_N,
    output [14:0] HPS_DDR3_ADDR,
    output [ 2:0] HPS_DDR3_BA,
    output        HPS_DDR3_CAS_N,
    output        HPS_DDR3_CKE,
    output        HPS_DDR3_CK_N,
    output        HPS_DDR3_CK_P,
    output        HPS_DDR3_CS_N,
    output [ 3:0] HPS_DDR3_DM,
    inout  [31:0] HPS_DDR3_DQ,
    inout  [ 3:0] HPS_DDR3_DQS_N,
    inout  [ 3:0] HPS_DDR3_DQS_P,
    output        HPS_DDR3_ODT,
    output        HPS_DDR3_RAS_N,
    output        HPS_DDR3_RESET_N,
    input         HPS_DDR3_RZQ,
    output        HPS_DDR3_WE_N,
    output        HPS_ENET_GTX_CLK,
    inout         HPS_ENET_INT_N,
    output        HPS_ENET_MDC,
    inout         HPS_ENET_MDIO,
    input         HPS_ENET_RX_CLK,
    input  [ 3:0] HPS_ENET_RX_DATA,
    input         HPS_ENET_RX_DV,
    output [ 3:0] HPS_ENET_TX_DATA,
    output        HPS_ENET_TX_EN,
    inout  [ 3:0] HPS_FLASH_DATA,
    output        HPS_FLASH_DCLK,
    output        HPS_FLASH_NCSO,
    inout         HPS_GSENSOR_INT,
    inout         HPS_I2C1_SCLK,
    inout         HPS_I2C1_SDAT,
    inout         HPS_I2C2_SCLK,
    inout         HPS_I2C2_SDAT,
    inout         HPS_I2C_CONTROL,
    inout         HPS_KEY,
    inout         HPS_LED,
    inout         HPS_LTC_GPIO,
    output        HPS_SD_CLK,
    inout         HPS_SD_CMD,
    inout  [ 3:0] HPS_SD_DATA,
    output        HPS_SPIM_CLK,
    input         HPS_SPIM_MISO,
    output        HPS_SPIM_MOSI,
    inout         HPS_SPIM_SS,
    input         HPS_UART_RX,
    output        HPS_UART_TX,
    input         HPS_USB_CLKOUT,
    inout  [ 7:0] HPS_USB_DATA,
    input         HPS_USB_DIR,
    input         HPS_USB_NXT,
    output        HPS_USB_STP,
`endif  /*ENABLE_HPS*/

    ///////// IRDA /////////
    input  IRDA_RXD,
    output IRDA_TXD,

    ///////// KEY /////////
    input [3:0] KEY,

    ///////// LEDR /////////
    output [9:0] LEDR,

    ///////// PS2 /////////
    inout PS2_CLK,
    inout PS2_CLK2,
    inout PS2_DAT,
    inout PS2_DAT2,

    ///////// SW /////////
    input [9:0] SW,

    ///////// TD /////////
    input        TD_CLK27,
    input  [7:0] TD_DATA,
    input        TD_HS,
    output       TD_RESET_N,
    input        TD_VS,


    ///////// VGA /////////
    output [7:0] VGA_B,
    output       VGA_BLANK_N,
    output       VGA_CLK,
    output [7:0] VGA_G,
    output       VGA_HS,
    output [7:0] VGA_R,
    output       VGA_SYNC_N,
    output       VGA_VS
);



  // internal wires and registers declaration
  wire [ 3:0] fpga_debounced_buttons;
  wire [ 9:0] fpga_led_internal;
  wire        hps_fpga_reset_n;
  wire [ 2:0] hps_reset_req;
  wire        hps_cold_reset;
  wire        hps_warm_reset;
  wire        hps_debug_reset;
  wire [27:0] stm_hw_events;

  wire [31:0] pio_controlled_axi_signals;

  // local parameters
  localparam AWCACHE_BASE = 0;
  localparam AWCACHE_SIZE = 4;
  localparam AWPROT_BASE = 4;
  localparam AWPROT_SIZE = 3;
  localparam AWUSER_BASE = 7;
  localparam AWUSER_SIZE = 5;
  localparam ARCACHE_BASE = 16;
  localparam ARCACHE_SIZE = 4;
  localparam ARPROT_BASE = 20;
  localparam ARPROT_SIZE = 3;
  localparam ARUSER_BASE = 23;
  localparam ARUSER_SIZE = 5;

  // connection of internal logics
  //  assign LEDR = fpga_led_internal;
  assign stm_hw_events = {{3{1'b0}}, SW, fpga_led_internal, fpga_debounced_buttons};
  // FIFO Interface wires
  wire [127:0] fifo_write_data;
  wire         fifo_write_en;
  wire         fifo_waitreq;

  // Acquisition control from HPS
  wire [  7:0] data_cntrl;
  reg ps_data_rdy_int, ps_data_rdy_stable;
  wire ps_ready_for_data;
  assign ps_ready_for_data = ps_data_rdy_stable;  // Using bit 0 as the trigger

  soc_system u0 (
      // Memory Interface
      .memory_mem_a      (HPS_DDR3_ADDR),
      .memory_mem_ba     (HPS_DDR3_BA),
      .memory_mem_ck     (HPS_DDR3_CK_P),
      .memory_mem_ck_n   (HPS_DDR3_CK_N),
      .memory_mem_cke    (HPS_DDR3_CKE),
      .memory_mem_cs_n   (HPS_DDR3_CS_N),
      .memory_mem_ras_n  (HPS_DDR3_RAS_N),
      .memory_mem_cas_n  (HPS_DDR3_CAS_N),
      .memory_mem_we_n   (HPS_DDR3_WE_N),
      .memory_mem_reset_n(HPS_DDR3_RESET_N),
      .memory_mem_dq     (HPS_DDR3_DQ),
      .memory_mem_dqs    (HPS_DDR3_DQS_P),
      .memory_mem_dqs_n  (HPS_DDR3_DQS_N),
      .memory_mem_odt    (HPS_DDR3_ODT),
      .memory_mem_dm     (HPS_DDR3_DM),
      .memory_oct_rzqin  (HPS_DDR3_RZQ),

      // HPS Peripherals (Ethernet, USB, etc.)
      .hps_0_hps_io_hps_io_emac1_inst_TX_CLK(HPS_ENET_GTX_CLK),
      .hps_0_hps_io_hps_io_emac1_inst_TXD0  (HPS_ENET_TX_DATA[0]),
      .hps_0_hps_io_hps_io_emac1_inst_TXD1  (HPS_ENET_TX_DATA[1]),
      .hps_0_hps_io_hps_io_emac1_inst_TXD2  (HPS_ENET_TX_DATA[2]),
      .hps_0_hps_io_hps_io_emac1_inst_TXD3  (HPS_ENET_TX_DATA[3]),
      .hps_0_hps_io_hps_io_emac1_inst_RXD0  (HPS_ENET_RX_DATA[0]),
      .hps_0_hps_io_hps_io_emac1_inst_MDIO  (HPS_ENET_MDIO),
      .hps_0_hps_io_hps_io_emac1_inst_MDC   (HPS_ENET_MDC),
      .hps_0_hps_io_hps_io_emac1_inst_RX_CTL(HPS_ENET_RX_DV),
      .hps_0_hps_io_hps_io_emac1_inst_TX_CTL(HPS_ENET_TX_EN),
      .hps_0_hps_io_hps_io_emac1_inst_RX_CLK(HPS_ENET_RX_CLK),
      .hps_0_hps_io_hps_io_emac1_inst_RXD1  (HPS_ENET_RX_DATA[1]),
      .hps_0_hps_io_hps_io_emac1_inst_RXD2  (HPS_ENET_RX_DATA[2]),
      .hps_0_hps_io_hps_io_emac1_inst_RXD3  (HPS_ENET_RX_DATA[3]),
      .hps_0_hps_io_hps_io_qspi_inst_IO0    (HPS_FLASH_DATA[0]),
      .hps_0_hps_io_hps_io_qspi_inst_IO1    (HPS_FLASH_DATA[1]),
      .hps_0_hps_io_hps_io_qspi_inst_IO2    (HPS_FLASH_DATA[2]),
      .hps_0_hps_io_hps_io_qspi_inst_IO3    (HPS_FLASH_DATA[3]),
      .hps_0_hps_io_hps_io_qspi_inst_SS0    (HPS_FLASH_NCSO),
      .hps_0_hps_io_hps_io_qspi_inst_CLK    (HPS_FLASH_DCLK),
      .hps_0_hps_io_hps_io_sdio_inst_CMD    (HPS_SD_CMD),
      .hps_0_hps_io_hps_io_sdio_inst_D0     (HPS_SD_DATA[0]),
      .hps_0_hps_io_hps_io_sdio_inst_D1     (HPS_SD_DATA[1]),
      .hps_0_hps_io_hps_io_sdio_inst_CLK    (HPS_SD_CLK),
      .hps_0_hps_io_hps_io_sdio_inst_D2     (HPS_SD_DATA[2]),
      .hps_0_hps_io_hps_io_sdio_inst_D3     (HPS_SD_DATA[3]),
      .hps_0_hps_io_hps_io_usb1_inst_D0     (HPS_USB_DATA[0]),
      .hps_0_hps_io_hps_io_usb1_inst_D1     (HPS_USB_DATA[1]),
      .hps_0_hps_io_hps_io_usb1_inst_D2     (HPS_USB_DATA[2]),
      .hps_0_hps_io_hps_io_usb1_inst_D3     (HPS_USB_DATA[3]),
      .hps_0_hps_io_hps_io_usb1_inst_D4     (HPS_USB_DATA[4]),
      .hps_0_hps_io_hps_io_usb1_inst_D5     (HPS_USB_DATA[5]),
      .hps_0_hps_io_hps_io_usb1_inst_D6     (HPS_USB_DATA[6]),
      .hps_0_hps_io_hps_io_usb1_inst_D7     (HPS_USB_DATA[7]),
      .hps_0_hps_io_hps_io_usb1_inst_CLK    (HPS_USB_CLKOUT),
      .hps_0_hps_io_hps_io_usb1_inst_STP    (HPS_USB_STP),
      .hps_0_hps_io_hps_io_usb1_inst_DIR    (HPS_USB_DIR),
      .hps_0_hps_io_hps_io_usb1_inst_NXT    (HPS_USB_NXT),
      .hps_0_hps_io_hps_io_spim1_inst_CLK   (HPS_SPIM_CLK),
      .hps_0_hps_io_hps_io_spim1_inst_MOSI  (HPS_SPIM_MOSI),
      .hps_0_hps_io_hps_io_spim1_inst_MISO  (HPS_SPIM_MISO),
      .hps_0_hps_io_hps_io_spim1_inst_SS0   (HPS_SPIM_SS),
      .hps_0_hps_io_hps_io_uart0_inst_RX    (HPS_UART_RX),
      .hps_0_hps_io_hps_io_uart0_inst_TX    (HPS_UART_TX),
      .hps_0_hps_io_hps_io_i2c0_inst_SDA    (HPS_I2C1_SDAT),
      .hps_0_hps_io_hps_io_i2c0_inst_SCL    (HPS_I2C1_SCLK),
      .hps_0_hps_io_hps_io_i2c1_inst_SDA    (HPS_I2C2_SDAT),
      .hps_0_hps_io_hps_io_i2c1_inst_SCL    (HPS_I2C2_SCLK),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO09 (HPS_CONV_USB_N),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO35 (HPS_ENET_INT_N),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO40 (HPS_LTC_GPIO),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO48 (HPS_I2C_CONTROL),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO53 (HPS_LED),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO54 (HPS_KEY),
      .hps_0_hps_io_hps_io_gpio_inst_GPIO61 (HPS_GSENSOR_INT),

      // System Control and Resets
      .clk_clk                             (CLOCK_50),
      .reset_reset_n                       (hps_fpga_reset_n),
      .hps_0_f2h_stm_hw_events_stm_hwevents(stm_hw_events),
      .hps_0_h2f_reset_reset_n             (hps_fpga_reset_n),
      // AXI Coherency Signals
      .mcu_axi_signals_export              (pio_controlled_axi_signals),
      .axi_signals_awcache                 (pio_controlled_axi_signals[AWCACHE_BASE+:AWCACHE_SIZE]),
      .axi_signals_awprot                  (pio_controlled_axi_signals[AWPROT_BASE+:AWPROT_SIZE]),
      .axi_signals_awuser                  (pio_controlled_axi_signals[AWUSER_BASE+:AWUSER_SIZE]),
      .axi_signals_arcache                 (pio_controlled_axi_signals[ARCACHE_BASE+:ARCACHE_SIZE]),
      .axi_signals_aruser                  (pio_controlled_axi_signals[ARUSER_BASE+:ARUSER_SIZE]),
      .axi_signals_arprot                  (pio_controlled_axi_signals[ARPROT_BASE+:ARPROT_SIZE]),

      // New FIFO Interface
      .fifo_in_writedata  (fifo_write_data),
      .fifo_in_write      (fifo_write_en),
      .fifo_in_waitrequest(fifo_waitreq),

      // New Control Signal
      .data_cntrl_export(data_cntrl)
  );

  assign LEDR[2] = fifo_waitreq;
  assign LEDR[1] = ps_ready_for_data;

  // Debounce logic to clean out glitches within 1ms
  debounce debounce_inst (
      .clk     (CLOCK3_50),
      .reset_n (hps_fpga_reset_n),
      .data_in (KEY),
      .data_out(fpga_debounced_buttons)
  );

  wire [15:0] mock_data_1, mock_data_2, mock_data_3, mock_data_4;
  wire data_valid_1, data_valid_2, data_valid_3, data_valid_4;

  mock_data mock_data_inst_1 (
      .clk(CLOCK_50),
      .rst_n(~rst_i),
      .ready_for_data(ps_ready_for_data),
      .data_out(mock_data_1),
      .data_valid(data_valid_1)
  );

  mock_data mock_data_inst_2 (
      .clk(CLOCK_50),
      .rst_n(~rst_i),
      .ready_for_data(ps_ready_for_data),
      .data_out(mock_data_2),
      .data_valid(data_valid_2)
  );

  mock_data mock_data_inst_3 (
      .clk(CLOCK_50),
      .rst_n(~rst_i),
      .ready_for_data(ps_ready_for_data),
      .data_out(mock_data_3),
      .data_valid(data_valid_3)
  );

  mock_data mock_data_inst_4 (
      .clk(CLOCK_50),
      .rst_n(~rst_i),
      .ready_for_data(ps_ready_for_data),
      .data_out(mock_data_4),
      .data_valid(data_valid_4)
  );

  wire pcm_fifo_write_en, data_fifo_write_en;
  wire [127:0] pcm_fifo_write_data, data_fifo_write_data;

  assign fifo_write_en = SW[7] ? data_fifo_write_en : pcm_fifo_write_en;
  assign fifo_write_data = SW[7] ? data_fifo_write_data : pcm_fifo_write_data;

  dma_fifo_write dma_fifo_write_inst (
      .clk(CLOCK_50),
      .rst_n(~rst_i),
      .input0_valid(data_valid_1),
      .input0(mock_data_1),
      .input1_valid(data_valid_2),
      .input1(mock_data_2),
      .input2_valid(data_valid_3), 
      .input2(mock_data_3),
      .input3_valid(data_valid_4), 
      .input3(mock_data_4),
      .input4_valid(1'b1),
      .input4(16'd4),
      .input5_valid(1'b1),
      .input5(16'd5),
      .input6_valid(1'b1),
      .input6(16'd6),
      .input7_valid(1'b1),
      .input7(16'd7),
      .ps_ready_for_data(ps_ready_for_data),
      .write_pending(fifo_waitreq),
      .write_en(data_fifo_write_en),
      .write_data(data_fifo_write_data)
  );

  // Source/Probe megawizard instance
  hps_reset hps_reset_inst (
      .source_clk(CLOCK_50),
      .source    (hps_reset_req)
  );


  /////////////////////////////////////////////////////
  // Declare clock, reset, and mode control signals //
  ///////////////////////////////////////////////////
  wire clk_i;
  wire rst_i;
  wire mic_clk_o;
  wire mic_data_val;
  wire [1:0] curr_mode;
  wire [2:0] freq_sel;
  reg latch_event_done;

  assign LEDR[0] = rst_i;  // Show reset state on LEDR[0]

  always @(posedge CLOCK_50) begin
    if (rst_i) begin
      ps_data_rdy_int <= 1'b0;
      ps_data_rdy_stable <= 1'b0;
    end else begin
      ps_data_rdy_int <= data_cntrl[0];
      ps_data_rdy_stable <= ps_data_rdy_int;
    end
  end

  /////////////////////////////////////////////////
  // Declare FIFO capture and display signals   //
  ///////////////////////////////////////////////
  wire [1:0] pcm_stream_sel;
  reg signed [15:0] fifo_data;
  reg fifo_pcm_valid;
  wire fifo_wrreq;
  wire fifo_rdreq;
  wire fifo_empty;
  wire fifo_full;
  wire [15:0] fifo_q;
  wire [12:0] fifo_usedw;

  reg fifo_rdreq_q;
  reg [15:0] latest_fifo_sample;
  reg [15:0] display_sample;
  reg [22:0] display_div_cnt;

  /////////////////////////////
  // Top-level assignments  //
  ///////////////////////////
  // Drive the internal system clock and active-high reset.
  assign clk_i = CLOCK_50;
  assign rst_i = ~fpga_debounced_buttons[0];

  // We don't care about the remaining GPIO pins.
  assign GPIO_0[35:0] = {36{1'bz}};

  reg [3:0] hex0_data, hex1_data, hex2_data, hex3_data, hex4_data, hex5_data;
  reg [2:0] page_sel;
  reg next_page;
  reg prev_button_3;

  always @(posedge clk_i) begin
    if (rst_i) begin
      prev_button_3 <= 1'b1;
    end else begin
      prev_button_3 <= fpga_debounced_buttons[3];
    end
  end

  always @(posedge clk_i) begin
    if (rst_i) begin
      page_sel <= 3'b000;
    end else if ((~fpga_debounced_buttons[3] && prev_button_3) || next_page) begin
      page_sel <= page_sel + 1'b1;
    end
  end

  always @(*) begin
    next_page = 1'b0;
    if (page_sel == 0) begin
      hex0_data = 4'b0;
      hex1_data = 4'b0;
      hex2_data = 4'b0;
      hex3_data = 4'b0;
      hex4_data = 4'b0;
      hex5_data = 4'b0;
    end else if (page_sel == 1) begin
      hex0_data = 4'b1;
      hex1_data = 4'b1;
      hex2_data = 4'b1;
      hex3_data = 4'b1;
      hex4_data = 4'b1;
      hex5_data = 4'b0;
    end else begin
      next_page = 1'b1;
    end
  end

  // Display the selected PCM sample as four hexadecimal digits.
  Seven_Seg iHEX0 (
      .bin_i(hex0_data),
      .hex_o(HEX0)
  );

  Seven_Seg iHEX1 (
      .bin_i(hex1_data),
      .hex_o(HEX1)
  );

  Seven_Seg iHEX2 (
      .bin_i(hex2_data),
      .hex_o(HEX2)
  );

  Seven_Seg iHEX3 (
      .bin_i(hex3_data),
      .hex_o(HEX3)
  );

  // Display the selected PCM stream number on HEX4.
  Seven_Seg iHEX4 (
      .bin_i(hex4_data),
      .hex_o(HEX4)
  );

  // Display the current microphone mode on HEX5.
  Seven_Seg iHEX5 (
      .bin_i(hex5_data),
      .hex_o(HEX5)
  );


endmodule
