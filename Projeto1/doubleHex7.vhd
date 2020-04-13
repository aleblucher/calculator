library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity doubleHex7 is
    generic (
        larguraDados : natural := 8;
		  tamanhoSeteSegmtos: natural := 7

    );
    port (
			din : in std_logic_vector(larguraDados-1 downto 0);
			dout : out std_logic_vector(larguraDados-1 downto 0);
			habilita : in std_logic;
			clk : in std_logic
        );
end entity;

architecture comportamento of doubleHex7 is
begin

		REG: entity work.registradorGenerico
				generic map(
					larguraDados => 8
				)
            port map (
					CLK => clk, 
					DIN => din, 
					DOUT => dout, 
					ENABLE => habilita, 
					RST => '0'
				);
				
end comportamento;