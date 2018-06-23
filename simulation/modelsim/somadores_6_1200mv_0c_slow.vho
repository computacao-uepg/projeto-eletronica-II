-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "06/22/2018 22:22:45"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eight_bits_full_adder IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	carry_in : IN std_logic;
	carry_out : OUT std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END eight_bits_full_adder;

-- Design Ports Information
-- carry_out	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_in	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eight_bits_full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \carry_in~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x0|result_component~0_combout\ : std_logic;
SIGNAL \x1|result_component~combout\ : std_logic;
SIGNAL \x2|result_component~combout\ : std_logic;
SIGNAL \x3|result_component~combout\ : std_logic;
SIGNAL \x4|result_component~combout\ : std_logic;
SIGNAL \x5|result_component~combout\ : std_logic;
SIGNAL \x6|result_component~combout\ : std_logic;
SIGNAL \x7|result_component~combout\ : std_logic;
SIGNAL \x0|carry_out_component~0_combout\ : std_logic;
SIGNAL \x1|carry_out_component~0_combout\ : std_logic;
SIGNAL \x2|carry_out_component~0_combout\ : std_logic;
SIGNAL \x3|carry_out_component~0_combout\ : std_logic;
SIGNAL \x4|carry_out_component~0_combout\ : std_logic;
SIGNAL \x5|carry_out_component~0_combout\ : std_logic;
SIGNAL \x6|carry_out_component~0_combout\ : std_logic;
SIGNAL \x7|carry_out_component~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_carry_in <= carry_in;
carry_out <= ww_carry_out;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N2
\carry_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x7|result_component~combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x0|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x1|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x2|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x3|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x4|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x5|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x6|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x7|carry_out_component~0_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\x[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\y[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\x[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\y[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\y[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\x[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\y[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\x[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\carry_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_in,
	o => \carry_in~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X1_Y9_N0
\x0|result_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x0|result_component~0_combout\ = \y[0]~input_o\ $ (\carry_in~input_o\ $ (\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \carry_in~input_o\,
	datad => \x[0]~input_o\,
	combout => \x0|result_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N10
\x1|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x1|result_component~combout\ = \y[1]~input_o\ $ (\x[1]~input_o\ $ (\x0|result_component~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x0|result_component~0_combout\,
	combout => \x1|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N12
\x2|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x2|result_component~combout\ = \x[2]~input_o\ $ (\y[2]~input_o\ $ (\x1|result_component~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \x1|result_component~combout\,
	combout => \x2|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N6
\x3|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x3|result_component~combout\ = \x[3]~input_o\ $ (\y[3]~input_o\ $ (\x2|result_component~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datac => \y[3]~input_o\,
	datad => \x2|result_component~combout\,
	combout => \x3|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N24
\x4|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x4|result_component~combout\ = \y[4]~input_o\ $ (\x[4]~input_o\ $ (\x3|result_component~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \x[4]~input_o\,
	datad => \x3|result_component~combout\,
	combout => \x4|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N18
\x5|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x5|result_component~combout\ = \y[5]~input_o\ $ (\x[5]~input_o\ $ (\x4|result_component~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datac => \x[5]~input_o\,
	datad => \x4|result_component~combout\,
	combout => \x5|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N20
\x6|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x6|result_component~combout\ = \x[6]~input_o\ $ (\y[6]~input_o\ $ (\x5|result_component~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \x5|result_component~combout\,
	combout => \x6|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N30
\x7|result_component\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x7|result_component~combout\ = \x[7]~input_o\ $ (\y[7]~input_o\ $ (\x6|result_component~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datab => \y[7]~input_o\,
	datad => \x6|result_component~combout\,
	combout => \x7|result_component~combout\);

-- Location: LCCOMB_X1_Y9_N8
\x0|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x0|carry_out_component~0_combout\ = (\y[0]~input_o\ & ((\carry_in~input_o\) # (\x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \carry_in~input_o\,
	datad => \x[0]~input_o\,
	combout => \x0|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N2
\x1|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x1|carry_out_component~0_combout\ = (\y[1]~input_o\ & ((\x[1]~input_o\) # (\x0|result_component~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x0|result_component~0_combout\,
	combout => \x1|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N4
\x2|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x2|carry_out_component~0_combout\ = (\y[2]~input_o\ & ((\x[2]~input_o\) # (\x1|result_component~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \x1|result_component~combout\,
	combout => \x2|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N22
\x3|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x3|carry_out_component~0_combout\ = (\y[3]~input_o\ & ((\x[3]~input_o\) # (\x2|result_component~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datac => \y[3]~input_o\,
	datad => \x2|result_component~combout\,
	combout => \x3|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N16
\x4|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x4|carry_out_component~0_combout\ = (\y[4]~input_o\ & ((\x[4]~input_o\) # (\x3|result_component~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \x[4]~input_o\,
	datad => \x3|result_component~combout\,
	combout => \x4|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\x5|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x5|carry_out_component~0_combout\ = (\y[5]~input_o\ & ((\x[5]~input_o\) # (\x4|result_component~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datac => \x[5]~input_o\,
	datad => \x4|result_component~combout\,
	combout => \x5|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N28
\x6|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x6|carry_out_component~0_combout\ = (\y[6]~input_o\ & ((\x[6]~input_o\) # (\x5|result_component~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \x5|result_component~combout\,
	combout => \x6|carry_out_component~0_combout\);

-- Location: LCCOMB_X1_Y9_N14
\x7|carry_out_component~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x7|carry_out_component~0_combout\ = (\y[7]~input_o\ & ((\x[7]~input_o\) # (\x6|result_component~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datab => \y[7]~input_o\,
	datad => \x6|result_component~combout\,
	combout => \x7|carry_out_component~0_combout\);

ww_carry_out <= \carry_out~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;
END structure;


