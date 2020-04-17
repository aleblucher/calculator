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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/17/2020 01:06:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          calculadora
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY calculadora_vhd_vec_tst IS
END calculadora_vhd_vec_tst;
ARCHITECTURE calculadora_arch OF calculadora_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL banco003 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL banco004 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL banco007 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL bancoR3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL enderecamento : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entradaA_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entradaB_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL pontosdecontrole : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL programcounter : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL saida_somador : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL saida_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidaA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sinal_estendido : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL Z_out_ula : STD_LOGIC;
COMPONENT calculadora
	PORT (
	banco003 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	banco004 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	banco007 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	bancoR3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	enderecamento : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	entradaA_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	entradaB_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDG : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	pontosdecontrole : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	programcounter : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	saida_somador : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	saida_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saidaA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sinal_estendido : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	Z_out_ula : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : calculadora
	PORT MAP (
-- list connections between master ports and signals
	banco003 => banco003,
	banco004 => banco004,
	banco007 => banco007,
	bancoR3 => bancoR3,
	CLOCK_50 => CLOCK_50,
	enderecamento => enderecamento,
	entradaA_ULA => entradaA_ULA,
	entradaB_ULA => entradaB_ULA,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	HEX7 => HEX7,
	KEY => KEY,
	LEDG => LEDG,
	LEDR => LEDR,
	pontosdecontrole => pontosdecontrole,
	programcounter => programcounter,
	saida_somador => saida_somador,
	saida_ULA => saida_ULA,
	saidaA => saidaA,
	saidaB => saidaB,
	sinal_estendido => sinal_estendido,
	SW => SW,
	Z_out_ula => Z_out_ula
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 50000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
-- SW[17]
t_prcs_SW_17: PROCESS
BEGIN
	SW(17) <= '0';
WAIT;
END PROCESS t_prcs_SW_17;
-- SW[16]
t_prcs_SW_16: PROCESS
BEGIN
	SW(16) <= '0';
WAIT;
END PROCESS t_prcs_SW_16;
-- SW[15]
t_prcs_SW_15: PROCESS
BEGIN
	SW(15) <= '0';
WAIT;
END PROCESS t_prcs_SW_15;
-- SW[14]
t_prcs_SW_14: PROCESS
BEGIN
	SW(14) <= '0';
WAIT;
END PROCESS t_prcs_SW_14;
-- SW[13]
t_prcs_SW_13: PROCESS
BEGIN
	SW(13) <= '0';
WAIT;
END PROCESS t_prcs_SW_13;
-- SW[12]
t_prcs_SW_12: PROCESS
BEGIN
	SW(12) <= '0';
WAIT;
END PROCESS t_prcs_SW_12;
-- SW[11]
t_prcs_SW_11: PROCESS
BEGIN
	SW(11) <= '0';
WAIT;
END PROCESS t_prcs_SW_11;
-- SW[10]
t_prcs_SW_10: PROCESS
BEGIN
	SW(10) <= '0';
WAIT;
END PROCESS t_prcs_SW_10;
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END calculadora_arch;
