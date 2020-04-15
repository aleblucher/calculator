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
-- Generated on "04/15/2020 11:51:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bancoRegistradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bancoRegistradores_vhd_vec_tst IS
END bancoRegistradores_vhd_vec_tst;
ARCHITECTURE bancoRegistradores_arch OF bancoRegistradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL banco001 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL bancoR3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dadoEscritaC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enderecoA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enderecoB : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enderecoC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL escreveC : STD_LOGIC;
SIGNAL saidaA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT bancoRegistradores
	PORT (
	banco001 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	bancoR3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	dadoEscritaC : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enderecoA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	enderecoB : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	enderecoC : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	escreveC : IN STD_LOGIC;
	saidaA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bancoRegistradores
	PORT MAP (
-- list connections between master ports and signals
	banco001 => banco001,
	bancoR3 => bancoR3,
	clk => clk,
	dadoEscritaC => dadoEscritaC,
	enderecoA => enderecoA,
	enderecoB => enderecoB,
	enderecoC => enderecoC,
	escreveC => escreveC,
	saidaA => saidaA,
	saidaB => saidaB
	);
-- dadoEscritaC[7]
t_prcs_dadoEscritaC_7: PROCESS
BEGIN
	dadoEscritaC(7) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_7;
-- dadoEscritaC[6]
t_prcs_dadoEscritaC_6: PROCESS
BEGIN
	dadoEscritaC(6) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_6;
-- dadoEscritaC[5]
t_prcs_dadoEscritaC_5: PROCESS
BEGIN
	dadoEscritaC(5) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_5;
-- dadoEscritaC[4]
t_prcs_dadoEscritaC_4: PROCESS
BEGIN
	dadoEscritaC(4) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_4;
-- dadoEscritaC[3]
t_prcs_dadoEscritaC_3: PROCESS
BEGIN
	dadoEscritaC(3) <= '1';
	WAIT FOR 200000 ps;
	dadoEscritaC(3) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_3;
-- dadoEscritaC[2]
t_prcs_dadoEscritaC_2: PROCESS
BEGIN
	dadoEscritaC(2) <= '1';
	WAIT FOR 100000 ps;
	dadoEscritaC(2) <= '0';
	WAIT FOR 100000 ps;
	dadoEscritaC(2) <= '1';
	WAIT FOR 100000 ps;
	dadoEscritaC(2) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_2;
-- dadoEscritaC[1]
t_prcs_dadoEscritaC_1: PROCESS
BEGIN
	dadoEscritaC(1) <= '1';
	WAIT FOR 100000 ps;
	dadoEscritaC(1) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_1;
-- dadoEscritaC[0]
t_prcs_dadoEscritaC_0: PROCESS
BEGIN
	dadoEscritaC(0) <= '1';
	WAIT FOR 100000 ps;
	dadoEscritaC(0) <= '0';
	WAIT FOR 100000 ps;
	dadoEscritaC(0) <= '1';
	WAIT FOR 100000 ps;
	dadoEscritaC(0) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- enderecoA[2]
t_prcs_enderecoA_2: PROCESS
BEGIN
	enderecoA(2) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_2;
-- enderecoA[1]
t_prcs_enderecoA_1: PROCESS
BEGIN
	enderecoA(1) <= '0';
	WAIT FOR 400000 ps;
	enderecoA(1) <= '1';
	WAIT FOR 200000 ps;
	enderecoA(1) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_1;
-- enderecoA[0]
t_prcs_enderecoA_0: PROCESS
BEGIN
	enderecoA(0) <= '0';
	WAIT FOR 300000 ps;
	enderecoA(0) <= '1';
	WAIT FOR 100000 ps;
	enderecoA(0) <= '0';
	WAIT FOR 100000 ps;
	enderecoA(0) <= '1';
	WAIT FOR 100000 ps;
	enderecoA(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_0;
-- enderecoB[2]
t_prcs_enderecoB_2: PROCESS
BEGIN
	enderecoB(2) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_2;
-- enderecoB[1]
t_prcs_enderecoB_1: PROCESS
BEGIN
	enderecoB(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_1;
-- enderecoB[0]
t_prcs_enderecoB_0: PROCESS
BEGIN
	enderecoB(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_0;
-- enderecoC[2]
t_prcs_enderecoC_2: PROCESS
BEGIN
	enderecoC(2) <= '0';
	WAIT FOR 300000 ps;
	enderecoC(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_2;
-- enderecoC[1]
t_prcs_enderecoC_1: PROCESS
BEGIN
	enderecoC(1) <= '0';
	WAIT FOR 100000 ps;
	enderecoC(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_1;
-- enderecoC[0]
t_prcs_enderecoC_0: PROCESS
BEGIN
	enderecoC(0) <= '1';
	WAIT FOR 100000 ps;
	enderecoC(0) <= '0';
	WAIT FOR 100000 ps;
	enderecoC(0) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_0;

-- escreveC
t_prcs_escreveC: PROCESS
BEGIN
	escreveC <= '1';
	WAIT FOR 300000 ps;
	escreveC <= '0';
WAIT;
END PROCESS t_prcs_escreveC;
END bancoRegistradores_arch;
