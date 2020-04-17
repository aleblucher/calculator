library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity ULA is
    generic
    (
        larguraDados : natural := 8
    );
    port
    (
        entradaA, entradaB: 	in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  seletor: 					in STD_LOGIC_VECTOR(3 downto 0);
        saida:  					out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  Z   : 						out std_logic
--		  carry:						out std_logic
    );
end entity;

architecture comportamento of ULA is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

	 signal soma : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
 	 signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	 signal op_and : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	 signal op_or: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	 signal op_xor: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	 signal op_not: STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	 
    begin
		  soma 		<= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
		  subtracao <= STD_LOGIC_VECTOR(unsigned(entradaB) - unsigned(entradaA));
		  op_and		<= entradaA and entradaB;
		  op_or		<= entradaA or entradaB;
		  op_xor		<= entradaA xor entradaB;
		  op_not		<= not entradaA;
		  
		  
        saida <= soma when (seletor = "0000") else				-- add = 0000
					  subtracao when (seletor = "0001") else		-- sub = 0001
					  op_and when (seletor = "0010") else			-- and = 0010
					  op_or when (seletor = "0011") else			-- or  = 0011
					  op_xor when (seletor = "0100") else			-- xor = 0100
					  op_not when (seletor = "0101") else			-- not = 0101
					  entradaA; -- pass 
	  
	  
	  Z <= '1' when unsigned(saida) = unsigned(zero) else '0';
	  
end architecture;
