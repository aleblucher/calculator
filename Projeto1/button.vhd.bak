library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity button is
	Generic ( 
		TOTAL_KEY : natural := 2;
		DATA_SIZE : natural := 8
	);
	
	port
	(
		key_in : in std_logic_vector(TOTAL_KEY-1 downto 0); 
		enable : in std_logic;
		
		led_in : out std_logic_vector(TOTAL_KEY-1 downto 0);
		key_out : out std_logic_vector(DATA_SIZE-1 downto 0)
	);
end button;


architecture keyArch of button is

	signal sig_key : std_logic_vector(DATA_SIZE-1 downto 0);
	
begin
	
	sig_key <= ( std_logic_vector(to_unsigned(0, key_out'length - key_in'length)) & not(key_in)); 
	
	key_out <= sig_key when (enable = '1') else (others=>'Z'); 
	led_in <= not(key_in); -- Acende os leds
	
	
end keyArch;