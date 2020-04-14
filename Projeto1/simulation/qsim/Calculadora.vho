-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/13/2020 22:07:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	enderecamento : OUT std_logic_vector(14 DOWNTO 0);
	programcounter : OUT std_logic_vector(13 DOWNTO 0);
	pontosdecontrole : OUT std_logic_vector(11 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END calculadora;

ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enderecamento : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_programcounter : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_pontosdecontrole : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \enderecamento[0]~output_o\ : std_logic;
SIGNAL \enderecamento[1]~output_o\ : std_logic;
SIGNAL \enderecamento[2]~output_o\ : std_logic;
SIGNAL \enderecamento[3]~output_o\ : std_logic;
SIGNAL \enderecamento[4]~output_o\ : std_logic;
SIGNAL \enderecamento[5]~output_o\ : std_logic;
SIGNAL \enderecamento[6]~output_o\ : std_logic;
SIGNAL \enderecamento[7]~output_o\ : std_logic;
SIGNAL \enderecamento[8]~output_o\ : std_logic;
SIGNAL \enderecamento[9]~output_o\ : std_logic;
SIGNAL \enderecamento[10]~output_o\ : std_logic;
SIGNAL \enderecamento[11]~output_o\ : std_logic;
SIGNAL \enderecamento[12]~output_o\ : std_logic;
SIGNAL \enderecamento[13]~output_o\ : std_logic;
SIGNAL \enderecamento[14]~output_o\ : std_logic;
SIGNAL \programcounter[0]~output_o\ : std_logic;
SIGNAL \programcounter[1]~output_o\ : std_logic;
SIGNAL \programcounter[2]~output_o\ : std_logic;
SIGNAL \programcounter[3]~output_o\ : std_logic;
SIGNAL \programcounter[4]~output_o\ : std_logic;
SIGNAL \programcounter[5]~output_o\ : std_logic;
SIGNAL \programcounter[6]~output_o\ : std_logic;
SIGNAL \programcounter[7]~output_o\ : std_logic;
SIGNAL \programcounter[8]~output_o\ : std_logic;
SIGNAL \programcounter[9]~output_o\ : std_logic;
SIGNAL \programcounter[10]~output_o\ : std_logic;
SIGNAL \programcounter[11]~output_o\ : std_logic;
SIGNAL \programcounter[12]~output_o\ : std_logic;
SIGNAL \programcounter[13]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[0]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[1]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[2]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[3]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[4]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[5]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[6]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[7]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[8]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[9]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[10]~output_o\ : std_logic;
SIGNAL \pontosdecontrole[11]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[0]~1\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[1]~2_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[1]~3\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[2]~4_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[1]~14\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[2]~15_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[2]~5\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[3]~6_combout\ : std_logic;
SIGNAL \Processador|UC|Equal2~0_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[2]~16\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[3]~17_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[3]~7\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[4]~8_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[3]~18\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[4]~19_combout\ : std_logic;
SIGNAL \Processador|FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[4]~9\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[5]~10_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[4]~20\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[5]~21_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[5]~11\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[6]~12_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[5]~22\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[6]~23_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[6]~13\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[7]~14_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[6]~24\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[7]~25_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[7]~15\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[8]~16_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[7]~26\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[8]~27_combout\ : std_logic;
SIGNAL \Processador|FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[8]~17\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[9]~18_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[8]~28\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[9]~29_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[9]~19\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[10]~20_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[9]~30\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[10]~31_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[10]~21\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[11]~22_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[10]~32\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[11]~33_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[11]~23\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[12]~24_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[11]~34\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[12]~35_combout\ : std_logic;
SIGNAL \Processador|FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[12]~25\ : std_logic;
SIGNAL \Processador|FD|SomadorConstante|saida[13]~26_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[12]~36\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[13]~37_combout\ : std_logic;
SIGNAL \Processador|FD|ROM|memROM~3_combout\ : std_logic;
SIGNAL \Processador|UC|Equal2~1_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT[1]~13_combout\ : std_logic;
SIGNAL \Processador|FD|PC|DOUT\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Processador|UC|ALT_INV_Equal2~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
enderecamento <= ww_enderecamento;
programcounter <= ww_programcounter;
pontosdecontrole <= ww_pontosdecontrole;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|UC|ALT_INV_Equal2~1_combout\ <= NOT \Processador|UC|Equal2~1_combout\;

\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

\enderecamento[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \enderecamento[0]~output_o\);

\enderecamento[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[1]~output_o\);

\enderecamento[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[2]~output_o\);

\enderecamento[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[3]~output_o\);

\enderecamento[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[4]~output_o\);

\enderecamento[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[5]~output_o\);

\enderecamento[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[6]~output_o\);

\enderecamento[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[7]~output_o\);

\enderecamento[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[8]~output_o\);

\enderecamento[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[9]~output_o\);

\enderecamento[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[10]~output_o\);

\enderecamento[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[11]~output_o\);

\enderecamento[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[12]~output_o\);

\enderecamento[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[13]~output_o\);

\enderecamento[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \enderecamento[14]~output_o\);

\programcounter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \programcounter[0]~output_o\);

\programcounter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \programcounter[1]~output_o\);

\programcounter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \programcounter[2]~output_o\);

\programcounter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \programcounter[3]~output_o\);

\programcounter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \programcounter[4]~output_o\);

\programcounter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \programcounter[5]~output_o\);

\programcounter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \programcounter[6]~output_o\);

\programcounter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \programcounter[7]~output_o\);

\programcounter[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \programcounter[8]~output_o\);

\programcounter[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(9),
	devoe => ww_devoe,
	o => \programcounter[9]~output_o\);

\programcounter[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(10),
	devoe => ww_devoe,
	o => \programcounter[10]~output_o\);

\programcounter[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(11),
	devoe => ww_devoe,
	o => \programcounter[11]~output_o\);

\programcounter[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(12),
	devoe => ww_devoe,
	o => \programcounter[12]~output_o\);

\programcounter[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|PC|DOUT\(13),
	devoe => ww_devoe,
	o => \programcounter[13]~output_o\);

\pontosdecontrole[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pontosdecontrole[0]~output_o\);

\pontosdecontrole[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|UC|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[1]~output_o\);

\pontosdecontrole[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|UC|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[2]~output_o\);

\pontosdecontrole[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|UC|ALT_INV_Equal2~1_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[3]~output_o\);

\pontosdecontrole[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pontosdecontrole[4]~output_o\);

\pontosdecontrole[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pontosdecontrole[5]~output_o\);

\pontosdecontrole[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pontosdecontrole[6]~output_o\);

\pontosdecontrole[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[7]~output_o\);

\pontosdecontrole[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|UC|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[8]~output_o\);

\pontosdecontrole[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|UC|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[9]~output_o\);

\pontosdecontrole[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pontosdecontrole[10]~output_o\);

\pontosdecontrole[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|UC|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \pontosdecontrole[11]~output_o\);

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\Processador|FD|SomadorConstante|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[0]~0_combout\ = \Processador|FD|PC|DOUT\(0) $ (VCC)
-- \Processador|FD|SomadorConstante|saida[0]~1\ = CARRY(\Processador|FD|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(0),
	datad => VCC,
	combout => \Processador|FD|SomadorConstante|saida[0]~0_combout\,
	cout => \Processador|FD|SomadorConstante|saida[0]~1\);

\Processador|FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|SomadorConstante|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(0));

\Processador|FD|SomadorConstante|saida[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[1]~2_combout\ = (\Processador|FD|PC|DOUT\(1) & (!\Processador|FD|SomadorConstante|saida[0]~1\)) # (!\Processador|FD|PC|DOUT\(1) & ((\Processador|FD|SomadorConstante|saida[0]~1\) # (GND)))
-- \Processador|FD|SomadorConstante|saida[1]~3\ = CARRY((!\Processador|FD|SomadorConstante|saida[0]~1\) # (!\Processador|FD|PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(1),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[0]~1\,
	combout => \Processador|FD|SomadorConstante|saida[1]~2_combout\,
	cout => \Processador|FD|SomadorConstante|saida[1]~3\);

\Processador|FD|SomadorConstante|saida[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[2]~4_combout\ = (\Processador|FD|PC|DOUT\(2) & (\Processador|FD|SomadorConstante|saida[1]~3\ $ (GND))) # (!\Processador|FD|PC|DOUT\(2) & (!\Processador|FD|SomadorConstante|saida[1]~3\ & VCC))
-- \Processador|FD|SomadorConstante|saida[2]~5\ = CARRY((\Processador|FD|PC|DOUT\(2) & !\Processador|FD|SomadorConstante|saida[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(2),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[1]~3\,
	combout => \Processador|FD|SomadorConstante|saida[2]~4_combout\,
	cout => \Processador|FD|SomadorConstante|saida[2]~5\);

\Processador|FD|PC|DOUT[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[1]~13_combout\ = (\Processador|FD|SomadorConstante|saida[1]~2_combout\ & (\Processador|UC|Equal2~1_combout\ $ (VCC))) # (!\Processador|FD|SomadorConstante|saida[1]~2_combout\ & (\Processador|UC|Equal2~1_combout\ & VCC))
-- \Processador|FD|PC|DOUT[1]~14\ = CARRY((\Processador|FD|SomadorConstante|saida[1]~2_combout\ & \Processador|UC|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[1]~2_combout\,
	datab => \Processador|UC|Equal2~1_combout\,
	datad => VCC,
	combout => \Processador|FD|PC|DOUT[1]~13_combout\,
	cout => \Processador|FD|PC|DOUT[1]~14\);

\Processador|FD|PC|DOUT[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[2]~15_combout\ = (\Processador|FD|SomadorConstante|saida[2]~4_combout\ & (!\Processador|FD|PC|DOUT[1]~14\)) # (!\Processador|FD|SomadorConstante|saida[2]~4_combout\ & ((\Processador|FD|PC|DOUT[1]~14\) # (GND)))
-- \Processador|FD|PC|DOUT[2]~16\ = CARRY((!\Processador|FD|PC|DOUT[1]~14\) # (!\Processador|FD|SomadorConstante|saida[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[2]~4_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[1]~14\,
	combout => \Processador|FD|PC|DOUT[2]~15_combout\,
	cout => \Processador|FD|PC|DOUT[2]~16\);

\Processador|FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(2));

\Processador|FD|SomadorConstante|saida[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[3]~6_combout\ = (\Processador|FD|PC|DOUT\(3) & (!\Processador|FD|SomadorConstante|saida[2]~5\)) # (!\Processador|FD|PC|DOUT\(3) & ((\Processador|FD|SomadorConstante|saida[2]~5\) # (GND)))
-- \Processador|FD|SomadorConstante|saida[3]~7\ = CARRY((!\Processador|FD|SomadorConstante|saida[2]~5\) # (!\Processador|FD|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(3),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[2]~5\,
	combout => \Processador|FD|SomadorConstante|saida[3]~6_combout\,
	cout => \Processador|FD|SomadorConstante|saida[3]~7\);

\Processador|UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|UC|Equal2~0_combout\ = (\Processador|FD|PC|DOUT\(0) & \Processador|FD|ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(0),
	datab => \Processador|FD|ROM|memROM~3_combout\,
	combout => \Processador|UC|Equal2~0_combout\);

\Processador|FD|PC|DOUT[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[3]~17_combout\ = ((\Processador|FD|SomadorConstante|saida[3]~6_combout\ $ (\Processador|UC|Equal2~0_combout\ $ (!\Processador|FD|PC|DOUT[2]~16\)))) # (GND)
-- \Processador|FD|PC|DOUT[3]~18\ = CARRY((\Processador|FD|SomadorConstante|saida[3]~6_combout\ & ((\Processador|UC|Equal2~0_combout\) # (!\Processador|FD|PC|DOUT[2]~16\))) # (!\Processador|FD|SomadorConstante|saida[3]~6_combout\ & 
-- (\Processador|UC|Equal2~0_combout\ & !\Processador|FD|PC|DOUT[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[3]~6_combout\,
	datab => \Processador|UC|Equal2~0_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[2]~16\,
	combout => \Processador|FD|PC|DOUT[3]~17_combout\,
	cout => \Processador|FD|PC|DOUT[3]~18\);

\Processador|FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(3));

\Processador|FD|SomadorConstante|saida[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[4]~8_combout\ = (\Processador|FD|PC|DOUT\(4) & (\Processador|FD|SomadorConstante|saida[3]~7\ $ (GND))) # (!\Processador|FD|PC|DOUT\(4) & (!\Processador|FD|SomadorConstante|saida[3]~7\ & VCC))
-- \Processador|FD|SomadorConstante|saida[4]~9\ = CARRY((\Processador|FD|PC|DOUT\(4) & !\Processador|FD|SomadorConstante|saida[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(4),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[3]~7\,
	combout => \Processador|FD|SomadorConstante|saida[4]~8_combout\,
	cout => \Processador|FD|SomadorConstante|saida[4]~9\);

\Processador|FD|PC|DOUT[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[4]~19_combout\ = (\Processador|FD|SomadorConstante|saida[4]~8_combout\ & (!\Processador|FD|PC|DOUT[3]~18\)) # (!\Processador|FD|SomadorConstante|saida[4]~8_combout\ & ((\Processador|FD|PC|DOUT[3]~18\) # (GND)))
-- \Processador|FD|PC|DOUT[4]~20\ = CARRY((!\Processador|FD|PC|DOUT[3]~18\) # (!\Processador|FD|SomadorConstante|saida[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[4]~8_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[3]~18\,
	combout => \Processador|FD|PC|DOUT[4]~19_combout\,
	cout => \Processador|FD|PC|DOUT[4]~20\);

\Processador|FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(4));

\Processador|FD|ROM|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|ROM|memROM~0_combout\ = (!\Processador|FD|PC|DOUT\(1) & (!\Processador|FD|PC|DOUT\(2) & (!\Processador|FD|PC|DOUT\(3) & !\Processador|FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(1),
	datab => \Processador|FD|PC|DOUT\(2),
	datac => \Processador|FD|PC|DOUT\(3),
	datad => \Processador|FD|PC|DOUT\(4),
	combout => \Processador|FD|ROM|memROM~0_combout\);

\Processador|FD|SomadorConstante|saida[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[5]~10_combout\ = (\Processador|FD|PC|DOUT\(5) & (!\Processador|FD|SomadorConstante|saida[4]~9\)) # (!\Processador|FD|PC|DOUT\(5) & ((\Processador|FD|SomadorConstante|saida[4]~9\) # (GND)))
-- \Processador|FD|SomadorConstante|saida[5]~11\ = CARRY((!\Processador|FD|SomadorConstante|saida[4]~9\) # (!\Processador|FD|PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(5),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[4]~9\,
	combout => \Processador|FD|SomadorConstante|saida[5]~10_combout\,
	cout => \Processador|FD|SomadorConstante|saida[5]~11\);

\Processador|FD|PC|DOUT[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[5]~21_combout\ = (\Processador|FD|SomadorConstante|saida[5]~10_combout\ & (\Processador|FD|PC|DOUT[4]~20\ $ (GND))) # (!\Processador|FD|SomadorConstante|saida[5]~10_combout\ & (!\Processador|FD|PC|DOUT[4]~20\ & VCC))
-- \Processador|FD|PC|DOUT[5]~22\ = CARRY((\Processador|FD|SomadorConstante|saida[5]~10_combout\ & !\Processador|FD|PC|DOUT[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[5]~10_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[4]~20\,
	combout => \Processador|FD|PC|DOUT[5]~21_combout\,
	cout => \Processador|FD|PC|DOUT[5]~22\);

\Processador|FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(5));

\Processador|FD|SomadorConstante|saida[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[6]~12_combout\ = (\Processador|FD|PC|DOUT\(6) & (\Processador|FD|SomadorConstante|saida[5]~11\ $ (GND))) # (!\Processador|FD|PC|DOUT\(6) & (!\Processador|FD|SomadorConstante|saida[5]~11\ & VCC))
-- \Processador|FD|SomadorConstante|saida[6]~13\ = CARRY((\Processador|FD|PC|DOUT\(6) & !\Processador|FD|SomadorConstante|saida[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(6),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[5]~11\,
	combout => \Processador|FD|SomadorConstante|saida[6]~12_combout\,
	cout => \Processador|FD|SomadorConstante|saida[6]~13\);

\Processador|FD|PC|DOUT[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[6]~23_combout\ = (\Processador|FD|SomadorConstante|saida[6]~12_combout\ & ((\Processador|UC|Equal2~0_combout\ & (\Processador|FD|PC|DOUT[5]~22\ & VCC)) # (!\Processador|UC|Equal2~0_combout\ & (!\Processador|FD|PC|DOUT[5]~22\)))) # 
-- (!\Processador|FD|SomadorConstante|saida[6]~12_combout\ & ((\Processador|UC|Equal2~0_combout\ & (!\Processador|FD|PC|DOUT[5]~22\)) # (!\Processador|UC|Equal2~0_combout\ & ((\Processador|FD|PC|DOUT[5]~22\) # (GND)))))
-- \Processador|FD|PC|DOUT[6]~24\ = CARRY((\Processador|FD|SomadorConstante|saida[6]~12_combout\ & (!\Processador|UC|Equal2~0_combout\ & !\Processador|FD|PC|DOUT[5]~22\)) # (!\Processador|FD|SomadorConstante|saida[6]~12_combout\ & 
-- ((!\Processador|FD|PC|DOUT[5]~22\) # (!\Processador|UC|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[6]~12_combout\,
	datab => \Processador|UC|Equal2~0_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[5]~22\,
	combout => \Processador|FD|PC|DOUT[6]~23_combout\,
	cout => \Processador|FD|PC|DOUT[6]~24\);

\Processador|FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(6));

\Processador|FD|SomadorConstante|saida[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[7]~14_combout\ = (\Processador|FD|PC|DOUT\(7) & (!\Processador|FD|SomadorConstante|saida[6]~13\)) # (!\Processador|FD|PC|DOUT\(7) & ((\Processador|FD|SomadorConstante|saida[6]~13\) # (GND)))
-- \Processador|FD|SomadorConstante|saida[7]~15\ = CARRY((!\Processador|FD|SomadorConstante|saida[6]~13\) # (!\Processador|FD|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(7),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[6]~13\,
	combout => \Processador|FD|SomadorConstante|saida[7]~14_combout\,
	cout => \Processador|FD|SomadorConstante|saida[7]~15\);

\Processador|FD|PC|DOUT[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[7]~25_combout\ = ((\Processador|FD|SomadorConstante|saida[7]~14_combout\ $ (\Processador|FD|ROM|memROM~3_combout\ $ (!\Processador|FD|PC|DOUT[6]~24\)))) # (GND)
-- \Processador|FD|PC|DOUT[7]~26\ = CARRY((\Processador|FD|SomadorConstante|saida[7]~14_combout\ & ((\Processador|FD|ROM|memROM~3_combout\) # (!\Processador|FD|PC|DOUT[6]~24\))) # (!\Processador|FD|SomadorConstante|saida[7]~14_combout\ & 
-- (\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[7]~14_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[6]~24\,
	combout => \Processador|FD|PC|DOUT[7]~25_combout\,
	cout => \Processador|FD|PC|DOUT[7]~26\);

\Processador|FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(7));

\Processador|FD|SomadorConstante|saida[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[8]~16_combout\ = (\Processador|FD|PC|DOUT\(8) & (\Processador|FD|SomadorConstante|saida[7]~15\ $ (GND))) # (!\Processador|FD|PC|DOUT\(8) & (!\Processador|FD|SomadorConstante|saida[7]~15\ & VCC))
-- \Processador|FD|SomadorConstante|saida[8]~17\ = CARRY((\Processador|FD|PC|DOUT\(8) & !\Processador|FD|SomadorConstante|saida[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(8),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[7]~15\,
	combout => \Processador|FD|SomadorConstante|saida[8]~16_combout\,
	cout => \Processador|FD|SomadorConstante|saida[8]~17\);

\Processador|FD|PC|DOUT[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[8]~27_combout\ = (\Processador|FD|SomadorConstante|saida[8]~16_combout\ & ((\Processador|FD|ROM|memROM~3_combout\ & (\Processador|FD|PC|DOUT[7]~26\ & VCC)) # (!\Processador|FD|ROM|memROM~3_combout\ & 
-- (!\Processador|FD|PC|DOUT[7]~26\)))) # (!\Processador|FD|SomadorConstante|saida[8]~16_combout\ & ((\Processador|FD|ROM|memROM~3_combout\ & (!\Processador|FD|PC|DOUT[7]~26\)) # (!\Processador|FD|ROM|memROM~3_combout\ & ((\Processador|FD|PC|DOUT[7]~26\) # 
-- (GND)))))
-- \Processador|FD|PC|DOUT[8]~28\ = CARRY((\Processador|FD|SomadorConstante|saida[8]~16_combout\ & (!\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT[7]~26\)) # (!\Processador|FD|SomadorConstante|saida[8]~16_combout\ & 
-- ((!\Processador|FD|PC|DOUT[7]~26\) # (!\Processador|FD|ROM|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[8]~16_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[7]~26\,
	combout => \Processador|FD|PC|DOUT[8]~27_combout\,
	cout => \Processador|FD|PC|DOUT[8]~28\);

\Processador|FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(8));

\Processador|FD|ROM|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|ROM|memROM~1_combout\ = (!\Processador|FD|PC|DOUT\(5) & (!\Processador|FD|PC|DOUT\(6) & (!\Processador|FD|PC|DOUT\(7) & !\Processador|FD|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(5),
	datab => \Processador|FD|PC|DOUT\(6),
	datac => \Processador|FD|PC|DOUT\(7),
	datad => \Processador|FD|PC|DOUT\(8),
	combout => \Processador|FD|ROM|memROM~1_combout\);

\Processador|FD|SomadorConstante|saida[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[9]~18_combout\ = (\Processador|FD|PC|DOUT\(9) & (!\Processador|FD|SomadorConstante|saida[8]~17\)) # (!\Processador|FD|PC|DOUT\(9) & ((\Processador|FD|SomadorConstante|saida[8]~17\) # (GND)))
-- \Processador|FD|SomadorConstante|saida[9]~19\ = CARRY((!\Processador|FD|SomadorConstante|saida[8]~17\) # (!\Processador|FD|PC|DOUT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(9),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[8]~17\,
	combout => \Processador|FD|SomadorConstante|saida[9]~18_combout\,
	cout => \Processador|FD|SomadorConstante|saida[9]~19\);

\Processador|FD|PC|DOUT[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[9]~29_combout\ = ((\Processador|FD|SomadorConstante|saida[9]~18_combout\ $ (\Processador|FD|ROM|memROM~3_combout\ $ (!\Processador|FD|PC|DOUT[8]~28\)))) # (GND)
-- \Processador|FD|PC|DOUT[9]~30\ = CARRY((\Processador|FD|SomadorConstante|saida[9]~18_combout\ & ((\Processador|FD|ROM|memROM~3_combout\) # (!\Processador|FD|PC|DOUT[8]~28\))) # (!\Processador|FD|SomadorConstante|saida[9]~18_combout\ & 
-- (\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT[8]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[9]~18_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[8]~28\,
	combout => \Processador|FD|PC|DOUT[9]~29_combout\,
	cout => \Processador|FD|PC|DOUT[9]~30\);

\Processador|FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(9));

\Processador|FD|SomadorConstante|saida[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[10]~20_combout\ = (\Processador|FD|PC|DOUT\(10) & (\Processador|FD|SomadorConstante|saida[9]~19\ $ (GND))) # (!\Processador|FD|PC|DOUT\(10) & (!\Processador|FD|SomadorConstante|saida[9]~19\ & VCC))
-- \Processador|FD|SomadorConstante|saida[10]~21\ = CARRY((\Processador|FD|PC|DOUT\(10) & !\Processador|FD|SomadorConstante|saida[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(10),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[9]~19\,
	combout => \Processador|FD|SomadorConstante|saida[10]~20_combout\,
	cout => \Processador|FD|SomadorConstante|saida[10]~21\);

\Processador|FD|PC|DOUT[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[10]~31_combout\ = (\Processador|FD|SomadorConstante|saida[10]~20_combout\ & ((\Processador|FD|ROM|memROM~3_combout\ & (\Processador|FD|PC|DOUT[9]~30\ & VCC)) # (!\Processador|FD|ROM|memROM~3_combout\ & 
-- (!\Processador|FD|PC|DOUT[9]~30\)))) # (!\Processador|FD|SomadorConstante|saida[10]~20_combout\ & ((\Processador|FD|ROM|memROM~3_combout\ & (!\Processador|FD|PC|DOUT[9]~30\)) # (!\Processador|FD|ROM|memROM~3_combout\ & ((\Processador|FD|PC|DOUT[9]~30\) # 
-- (GND)))))
-- \Processador|FD|PC|DOUT[10]~32\ = CARRY((\Processador|FD|SomadorConstante|saida[10]~20_combout\ & (!\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT[9]~30\)) # (!\Processador|FD|SomadorConstante|saida[10]~20_combout\ & 
-- ((!\Processador|FD|PC|DOUT[9]~30\) # (!\Processador|FD|ROM|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[10]~20_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[9]~30\,
	combout => \Processador|FD|PC|DOUT[10]~31_combout\,
	cout => \Processador|FD|PC|DOUT[10]~32\);

\Processador|FD|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(10));

\Processador|FD|SomadorConstante|saida[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[11]~22_combout\ = (\Processador|FD|PC|DOUT\(11) & (!\Processador|FD|SomadorConstante|saida[10]~21\)) # (!\Processador|FD|PC|DOUT\(11) & ((\Processador|FD|SomadorConstante|saida[10]~21\) # (GND)))
-- \Processador|FD|SomadorConstante|saida[11]~23\ = CARRY((!\Processador|FD|SomadorConstante|saida[10]~21\) # (!\Processador|FD|PC|DOUT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(11),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[10]~21\,
	combout => \Processador|FD|SomadorConstante|saida[11]~22_combout\,
	cout => \Processador|FD|SomadorConstante|saida[11]~23\);

\Processador|FD|PC|DOUT[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[11]~33_combout\ = ((\Processador|FD|SomadorConstante|saida[11]~22_combout\ $ (\Processador|FD|ROM|memROM~3_combout\ $ (!\Processador|FD|PC|DOUT[10]~32\)))) # (GND)
-- \Processador|FD|PC|DOUT[11]~34\ = CARRY((\Processador|FD|SomadorConstante|saida[11]~22_combout\ & ((\Processador|FD|ROM|memROM~3_combout\) # (!\Processador|FD|PC|DOUT[10]~32\))) # (!\Processador|FD|SomadorConstante|saida[11]~22_combout\ & 
-- (\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT[10]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[11]~22_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[10]~32\,
	combout => \Processador|FD|PC|DOUT[11]~33_combout\,
	cout => \Processador|FD|PC|DOUT[11]~34\);

\Processador|FD|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(11));

\Processador|FD|SomadorConstante|saida[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[12]~24_combout\ = (\Processador|FD|PC|DOUT\(12) & (\Processador|FD|SomadorConstante|saida[11]~23\ $ (GND))) # (!\Processador|FD|PC|DOUT\(12) & (!\Processador|FD|SomadorConstante|saida[11]~23\ & VCC))
-- \Processador|FD|SomadorConstante|saida[12]~25\ = CARRY((\Processador|FD|PC|DOUT\(12) & !\Processador|FD|SomadorConstante|saida[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(12),
	datad => VCC,
	cin => \Processador|FD|SomadorConstante|saida[11]~23\,
	combout => \Processador|FD|SomadorConstante|saida[12]~24_combout\,
	cout => \Processador|FD|SomadorConstante|saida[12]~25\);

\Processador|FD|PC|DOUT[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[12]~35_combout\ = (\Processador|FD|SomadorConstante|saida[12]~24_combout\ & ((\Processador|FD|ROM|memROM~3_combout\ & (\Processador|FD|PC|DOUT[11]~34\ & VCC)) # (!\Processador|FD|ROM|memROM~3_combout\ & 
-- (!\Processador|FD|PC|DOUT[11]~34\)))) # (!\Processador|FD|SomadorConstante|saida[12]~24_combout\ & ((\Processador|FD|ROM|memROM~3_combout\ & (!\Processador|FD|PC|DOUT[11]~34\)) # (!\Processador|FD|ROM|memROM~3_combout\ & ((\Processador|FD|PC|DOUT[11]~34\) 
-- # (GND)))))
-- \Processador|FD|PC|DOUT[12]~36\ = CARRY((\Processador|FD|SomadorConstante|saida[12]~24_combout\ & (!\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT[11]~34\)) # (!\Processador|FD|SomadorConstante|saida[12]~24_combout\ & 
-- ((!\Processador|FD|PC|DOUT[11]~34\) # (!\Processador|FD|ROM|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[12]~24_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	datad => VCC,
	cin => \Processador|FD|PC|DOUT[11]~34\,
	combout => \Processador|FD|PC|DOUT[12]~35_combout\,
	cout => \Processador|FD|PC|DOUT[12]~36\);

\Processador|FD|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(12));

\Processador|FD|ROM|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|ROM|memROM~2_combout\ = (!\Processador|FD|PC|DOUT\(9) & (!\Processador|FD|PC|DOUT\(10) & (!\Processador|FD|PC|DOUT\(11) & !\Processador|FD|PC|DOUT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(9),
	datab => \Processador|FD|PC|DOUT\(10),
	datac => \Processador|FD|PC|DOUT\(11),
	datad => \Processador|FD|PC|DOUT\(12),
	combout => \Processador|FD|ROM|memROM~2_combout\);

\Processador|FD|SomadorConstante|saida[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|SomadorConstante|saida[13]~26_combout\ = \Processador|FD|PC|DOUT\(13) $ (\Processador|FD|SomadorConstante|saida[12]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|PC|DOUT\(13),
	cin => \Processador|FD|SomadorConstante|saida[12]~25\,
	combout => \Processador|FD|SomadorConstante|saida[13]~26_combout\);

\Processador|FD|PC|DOUT[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|PC|DOUT[13]~37_combout\ = \Processador|FD|SomadorConstante|saida[13]~26_combout\ $ (\Processador|FD|ROM|memROM~3_combout\ $ (!\Processador|FD|PC|DOUT[12]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|SomadorConstante|saida[13]~26_combout\,
	datab => \Processador|FD|ROM|memROM~3_combout\,
	cin => \Processador|FD|PC|DOUT[12]~36\,
	combout => \Processador|FD|PC|DOUT[13]~37_combout\);

\Processador|FD|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(13));

\Processador|FD|ROM|memROM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|FD|ROM|memROM~3_combout\ = (\Processador|FD|ROM|memROM~0_combout\ & (\Processador|FD|ROM|memROM~1_combout\ & (\Processador|FD|ROM|memROM~2_combout\ & !\Processador|FD|PC|DOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|ROM|memROM~0_combout\,
	datab => \Processador|FD|ROM|memROM~1_combout\,
	datac => \Processador|FD|ROM|memROM~2_combout\,
	datad => \Processador|FD|PC|DOUT\(13),
	combout => \Processador|FD|ROM|memROM~3_combout\);

\Processador|UC|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Processador|UC|Equal2~1_combout\ = (\Processador|FD|ROM|memROM~3_combout\ & !\Processador|FD|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|ROM|memROM~3_combout\,
	datad => \Processador|FD|PC|DOUT\(0),
	combout => \Processador|UC|Equal2~1_combout\);

\Processador|FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|FD|PC|DOUT[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|PC|DOUT\(1));

\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_enderecamento(0) <= \enderecamento[0]~output_o\;

ww_enderecamento(1) <= \enderecamento[1]~output_o\;

ww_enderecamento(2) <= \enderecamento[2]~output_o\;

ww_enderecamento(3) <= \enderecamento[3]~output_o\;

ww_enderecamento(4) <= \enderecamento[4]~output_o\;

ww_enderecamento(5) <= \enderecamento[5]~output_o\;

ww_enderecamento(6) <= \enderecamento[6]~output_o\;

ww_enderecamento(7) <= \enderecamento[7]~output_o\;

ww_enderecamento(8) <= \enderecamento[8]~output_o\;

ww_enderecamento(9) <= \enderecamento[9]~output_o\;

ww_enderecamento(10) <= \enderecamento[10]~output_o\;

ww_enderecamento(11) <= \enderecamento[11]~output_o\;

ww_enderecamento(12) <= \enderecamento[12]~output_o\;

ww_enderecamento(13) <= \enderecamento[13]~output_o\;

ww_enderecamento(14) <= \enderecamento[14]~output_o\;

ww_programcounter(0) <= \programcounter[0]~output_o\;

ww_programcounter(1) <= \programcounter[1]~output_o\;

ww_programcounter(2) <= \programcounter[2]~output_o\;

ww_programcounter(3) <= \programcounter[3]~output_o\;

ww_programcounter(4) <= \programcounter[4]~output_o\;

ww_programcounter(5) <= \programcounter[5]~output_o\;

ww_programcounter(6) <= \programcounter[6]~output_o\;

ww_programcounter(7) <= \programcounter[7]~output_o\;

ww_programcounter(8) <= \programcounter[8]~output_o\;

ww_programcounter(9) <= \programcounter[9]~output_o\;

ww_programcounter(10) <= \programcounter[10]~output_o\;

ww_programcounter(11) <= \programcounter[11]~output_o\;

ww_programcounter(12) <= \programcounter[12]~output_o\;

ww_programcounter(13) <= \programcounter[13]~output_o\;

ww_pontosdecontrole(0) <= \pontosdecontrole[0]~output_o\;

ww_pontosdecontrole(1) <= \pontosdecontrole[1]~output_o\;

ww_pontosdecontrole(2) <= \pontosdecontrole[2]~output_o\;

ww_pontosdecontrole(3) <= \pontosdecontrole[3]~output_o\;

ww_pontosdecontrole(4) <= \pontosdecontrole[4]~output_o\;

ww_pontosdecontrole(5) <= \pontosdecontrole[5]~output_o\;

ww_pontosdecontrole(6) <= \pontosdecontrole[6]~output_o\;

ww_pontosdecontrole(7) <= \pontosdecontrole[7]~output_o\;

ww_pontosdecontrole(8) <= \pontosdecontrole[8]~output_o\;

ww_pontosdecontrole(9) <= \pontosdecontrole[9]~output_o\;

ww_pontosdecontrole(10) <= \pontosdecontrole[10]~output_o\;

ww_pontosdecontrole(11) <= \pontosdecontrole[11]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


