library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity decodificador is
   generic (
    ADDR_WIDTH: natural := 8
   );
  port (
	 endereco  : in std_logic_vector(ADDR_WIDTH-1 downto 0);
	 leitura:	 in std_logic;
	 escrita:	 in std_logic;
    habilita :  out std_logic_vector(14 downto 0)
  );
end entity;

architecture comportamento of decodificador is

signal paginacao: 			std_logic_vector(3 downto 0);

signal chave_0_7:				std_logic;
signal chave_8_15:			std_logic;
signal chave_16_17:			std_logic;

signal LED_R_0_7:				std_logic;
signal LED_R_8_15:			std_logic;
signal LED_G_0_7: 			std_logic;

signal but_0_prox_input:	std_logic;
signal but_1_enter:			std_logic;
signal but_2:					std_logic;
signal but_3:					std_logic;

signal sete_segmentos:		std_logic_vector(3 downto 0);


alias habilita_ram:					std_logic is habilita(0);
alias habilita_chave_0_7:			std_logic is habilita(1);
alias habilita_chave_8_15: 		std_logic is habilita(2);
alias habilita_chave_16_17:		std_logic is habilita(3);
alias habilita_LED_R_0_7: 			std_logic is habilita(4);
alias habilita_LED_R_8_15: 		std_logic is habilita(5);
alias habilita_LED_G_0_7: 			std_logic is habilita(6);
alias habilita_but_0_prox_input: std_logic is habilita(7);
alias habilita_but_1_enter: 		std_logic is habilita(8);
alias habilita_but_2: 				std_logic is habilita(9);
alias habilita_but_3: 				std_logic is habilita(10);
alias habilita_hex_0_1: 			std_logic is habilita(11);
alias habilita_hex_2_3: 			std_logic is habilita(12);
alias habilita_hex_4_5: 			std_logic is habilita(13);
alias habilita_hex_6_7: 			std_logic is habilita(14);



  begin
 
  
	 with endereco(7 downto 6) select
	 paginacao <=  "0001" when "00",	-- 0   ~ 63 	-- RAM1
				      "0010" when "01",	-- 64  ~ 127  	-- RAM2
					   "0100" when "10",	-- 128 ~ 191  	-- IO input
						"1000" when "11",	--	192 ~ 255	-- IO output
						"0000" when others;
					 				 
	
				-- IO INPUT
			
	with endereco(5 downto 0) select
	chave_0_7 <= '1' when "000010",				-- chave_0_7 : 130 = 10000010
						'0' when others;
	
	with endereco(5 downto 0) select
	chave_8_15 <= '1' when "000011",				-- chave_8_15 : 131 = 10000011
						'0' when others;
	
	with endereco(5 downto 0) select
	chave_16_17 <= '1' when "000100",			-- chave_16_17 : 132 = 10000100
						'0' when others;
	
	with endereco(5 downto 0) select
	but_0_prox_input <= '1' when "000111",	 	-- but_0_prox_input : 135
						'0' when others;
	
	with endereco(5 downto 0) select
	but_1_enter <= '1' when "001000",			-- but_1_enter : 136
						'0' when others;
	
	with endereco(5 downto 0) select
	but_2 <= '1' when "001001",					-- but_2 : 137
						'0' when others;
	
	with endereco(5 downto 0) select
	but_3 <= '1' when "001010",	 				-- but_3 : 138
					'0' when others;
					
	
				-- IO OUTPUT
	
	with endereco(5 downto 0) select
	LED_R_0_7 <= '1' when "001000",				-- LED_R_0_7 : 200
					'0' when others;
		
	with endereco(5 downto 0) select
	LED_R_8_15 <= '1' when "001001",				-- LED_R_8_15 : 201
					'0' when others;
					
	with endereco(5 downto 0) select
	LED_G_0_7 <= '1' when "001010",				-- LED_R_8_15 : 202
					'0' when others;
					
		
	with endereco(5 downto 0) select
	sete_segmentos(0) <= '1' when "001101",			-- sete_segmentos : 205
					'0' when others;
					
	with endereco(5 downto 0) select
	sete_segmentos(1) <= '1' when "001110",			-- sete_segmentos : 206
					'0' when others;
					
	with endereco(5 downto 0) select
	sete_segmentos(2) <= '1' when "001111",			-- sete_segmentos : 207
					'0' when others;
					
	with endereco(5 downto 0) select
	sete_segmentos(3) <= '1' when "010000",			-- sete_segmentos : 208
					'0' when others;
					

	-------------------------------------------------------------------------------------------------------------------------------------------------------------
	habilita_ram <= paginacao(1) or paginacao(0);
	-------------------------------------------------------------------------------------------------------------------------------------------------------------
	habilita_chave_0_7 <= chave_0_7 and leitura and paginacao(2);
	habilita_chave_8_15 <= chave_8_15 and leitura and paginacao(2);
	habilita_chave_16_17 <= chave_16_17 and leitura and paginacao(2);
	habilita_but_0_prox_input <= but_0_prox_input and leitura and paginacao(2);
	habilita_but_1_enter <= but_1_enter and leitura and paginacao(2);
	habilita_but_2 <= but_2 and leitura and paginacao(2);
	habilita_but_3 <= but_3 and leitura and paginacao(2);
	-------------------------------------------------------------------------------------------------------------------------------------------------------------
	habilita_LED_R_0_7 <= LED_R_0_7 and escrita and paginacao(3);
	habilita_LED_R_8_15 <= LED_R_8_15 and escrita and paginacao(3);
	habilita_LED_G_0_7  <= LED_G_0_7  and escrita and paginacao(3);
	habilita_hex_0_1  <= sete_segmentos(0) and escrita and paginacao(3);
	habilita_hex_2_3  <= sete_segmentos(1) and escrita and paginacao(3);
	habilita_hex_4_5  <= sete_segmentos(2) and escrita and paginacao(3);
	habilita_hex_6_7  <= sete_segmentos(3) and escrita and paginacao(3);
	
end architecture;