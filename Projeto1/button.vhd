library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity button is
	port
	(
		key_in 			: in std_logic; 		
		key_out 			: out std_logic;
		enable_edge 	: in std_logic;
		enable_flip 	: in std_logic;
		but_clean		: in std_logic;
		clk				: in std_logic
	);
end button;


architecture keyArch of button is

	signal sig_key : std_logic;
	signal sinal_Q : std_logic;
	
begin
--	
--	Edge_Key_A: entity work.edgeDetector
--		Port Map(
--			clk => clk,
--			entrada => key_in,
--			saida => sig_key		
--		);
--		
--	Flip_Flop: entity work.registradorGenerico
--		Generic Map(
--			larguraDados => 1
--		)
--		port map (
--			CLK => clk, 
--			DIN => sig_key,
--			DOUT => sinal_Q,
--			ENABLE => enable_flip, 
--			RST => but_clean
--		);
--	
--	key_out <= sinal_Q when (enable_edge = '1') else 'Z';
	
end keyArch;