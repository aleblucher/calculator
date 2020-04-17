library ieee;
use ieee.std_logic_1164.all;

entity UC is
   generic (
    OPCODE_WIDTH: natural := 4;
	 CONTROLWORD_WIDTH: natural := 12
   );
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
		  Z_out_ula					: IN STD_LOGIC;
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
		  read_write_ram			: OUT STD_LOGIC_VECTOR(1 downto 0)
    );
end entity;

architecture comportamento of UC is

constant add : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0000";	-- add
constant sub : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0001";	-- sub
constant jump : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0010";	-- jump
constant beq : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0011";	-- beq
constant load : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0100";	-- load
constant store : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0101";	-- store

constant op_and : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "0110";	-- and
constant op_or : std_logic_vector(OPCODE_WIDTH-1 downto 0) 	:= "0111";	-- or
constant op_not : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "1000";	-- not
constant op_xor : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "1001";	-- xor

constant addi	 : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "1001";	-- xor


alias sel_mux_5:				std_logic is pontosDeControle(11);
alias sel_mux_1:				std_logic is pontosDeControle(10);
alias hab_escrita_banco:	std_logic is pontosDeControle(9);
alias sel_mux_2:				std_logic is pontosDeControle(8);
alias sel_ula:					std_logic_vector is pontosDeControle(7 downto 4);
alias sel_mux_3:				std_logic is pontosDeControle(3);
alias read_ram:				std_logic is pontosDeControle(2);
alias write_ram:				std_logic is pontosDeControle(1);
alias sel_mux_4:				std_logic is pontosDeControle(0);


begin

   
	sel_mux_4			<= '0' when (opcode = beq and Z_out_ula = '1') 
								else '1';

	write_ram			<= '1' when (opcode = store) 
								else '0';
	 
	read_ram				<= '1' when (opcode = load) 
								else '0';
								
	sel_mux_3			<= '0' when (opcode = load) 
								else '1';
								
	sel_ula	 			<= "0000" when (opcode = add or opcode = load or opcode = store) else
								"0001" when (opcode = sub or opcode = beq) else
								"0010" when (opcode = op_and) else
								"0011" when (opcode = op_or) else
								"0100" when (opcode = op_xor) else
								"0101" when (opcode = op_not) else
								"1000";
				
				
	sel_mux_2 			<= '1' when (opcode = load or opcode = store)
								else '0';
				
				
	hab_escrita_banco <= '1' when (opcode = load or opcode = add or opcode = sub or opcode = op_and or opcode = op_or or opcode = op_xor or opcode = op_not) 
								else '0';
								
	
	sel_mux_1 			<= '1' when (opcode = jump) 
								else '0';
						
												
	sel_mux_5			<= '1' when (opcode = store or opcode = beq) 
								else '0';
								
								
	read_write_ram <= read_ram & write_ram; -- read_write_ram(1) = read |  read_write_ram(0) = write
	

end architecture;