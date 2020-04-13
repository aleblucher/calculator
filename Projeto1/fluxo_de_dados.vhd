 library IEEE;
use IEEE.std_logic_1164.all;

entity fluxo_de_dados is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 14;
			 addrRAMWidth: natural:= 8;
			 
			 OPCODE_WIDTH: natural := 4;
			 CONTROLWORD_WIDTH: natural := 12;
			  
			  -- Utilizar o que for maior entre: dataWidth e  e somar com a quantidade de sinais de controle:
			 dataROMWidth: natural := 14 + 4			 
   );
	port (
	pontosDeControle: IN STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
	dadosLeitura: 		IN STD_LOGIC_VECTOR(dataWidth-1 DOWNTO 0);
	opcode: 				OUT STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
	dadoEscrita: 		OUT STD_LOGIC_VECTOR(dataWidth-1 DOWNTO 0);
	endereco: 			OUT STD_LOGIC_VECTOR(addrRAMWidth-1 DOWNTO 0);
	Z_out_ula:			OUT std_logic;
	clk:					IN std_logic
	);
end entity;

architecture comportamento of fluxo_de_dados is

signal out_PC, out_mux_4, out_mux_1, out_adder1, out_extensor, out_adder2 : std_logic_vector(13 downto 0);
signal out_bank_1, out_bank_2, out_mux_2, out_ula, out_mux_3: std_logic_vector(7 downto 0);
signal out_rom: std_logic_vector(17 downto 0);
signal out_mux_5:	std_logic_vector(2 downto 0);

alias addr_reg_1: 		std_logic_vector is out_rom(13 downto 11);
alias addr_reg_2: 		std_logic_vector is out_rom(10 downto 8);
alias addr_reg_3:			std_logic_vector is out_rom(7 downto 5);
alias imediato: 			std_logic_vector is out_rom(7 downto 0);
alias op_code_out_rom: 	std_logic_vector is out_rom(17 downto 14);
alias jump_addr: 			std_logic_vector is out_rom(13 downto 0);

alias sel_mux_5:				std_logic is pontosDeControle(11);
alias sel_mux_1:				std_logic is pontosDeControle(10);
alias hab_escrita_banco:	std_logic is pontosDeControle(9);
alias sel_mux_2:				std_logic is pontosDeControle(8);
alias sel_ula:					std_logic_vector is pontosDeControle(7 downto 4);
alias sel_mux_3:				std_logic is pontosDeControle(3);
-- read e write_ram nao sao usados aqui - pontosDeControle(2 downto 1)
alias sel_mux_4:				std_logic is pontosDeControle(0);


begin

	opcode <= op_code_out_rom;
	endereco <= out_ula;
	dadoEscrita <= out_bank_2;
	

	PC: entity work.registradorGenerico
            port map (
					CLK => clk, 
					DIN => out_mux_4, 
					DOUT => out_PC, 
					ENABLE => '1', 
					RST => '0'
				);
				
	SomadorConstante: entity work.somaConstante
				port map(
					entrada => out_PC,
					saida => out_adder1
				);
				
	Mux1: entity work.muxGenerico2x1
				generic map(
					larguraDados => addrWidth 
				)
				port map(
					entradaA_MUX => out_adder1,
					entradaB_MUX => jump_addr, 		-- jump_addr alias de out_rom
					seletor_MUX => sel_mux_1,			-- sel_mux_1 alias da palavra de controle[x]
					saida_MUX	 => out_mux_1
				);
				
				
	Extensor: entity work.extendeSinalGenerico 
				generic map (
					larguraDadoEntrada => dataWidth,
					larguraDadoSaida   => addrWidth
				)
				port map (
					extendeSinal_IN  => imediato,
					extendeSinal_OUT => out_extensor
				);
				
				
	Somador: entity work.somador
				generic map (
					larguraDados => addrWidth
				)
				port map(
					entradaA => out_adder1,
					entradaB => out_extensor,
					saida => out_adder2
				);
								
				
	Mux4: entity work.muxGenerico2x1
				generic map(
					larguraDados => addrWidth 
				)
				port map(
					entradaA_MUX => out_adder2,
					entradaB_MUX => out_mux_1,
					seletor_MUX  => sel_mux_4,			-- sel_mux_4 alias da palavra de controle[x]
					saida_MUX	 => out_mux_4
				);
				
				
	ROM: entity work.memoriaROM
				generic map (
					dataWidth => dataROMWidth,			
					addrWidth => addrWidth,
					oPcode_Width => OPCODE_WIDTH
				)
				port map(
					Endereco => out_PC,
					Dado => out_rom
				);

				
	Banco_Regs: entity work.bancoRegistradores
				port map(
					enderecoA => addr_reg_1,
					enderecoB => out_mux_5,
					enderecoC => addr_reg_3,
					clk          => clk,
					dadoEscritaC => out_mux_3,
					escreveC     => hab_escrita_banco,	-- hab_escrita_banco alias da palavra de controle[x]
					saidaA       => out_bank_1,
					saidaB       => out_bank_2
				);
				
	Mux5: entity work.muxGenerico2x1
				generic map(
					larguraDados => 3 
				)
				port map(
					entradaA_MUX => addr_reg_2,
					entradaB_MUX => addr_reg_3,
					seletor_MUX  => sel_mux_5,			-- sel_mux_5 alias da palavra de controle[11]
					saida_MUX	 => out_mux_5
				);
				
					
	Mux2: entity work.muxGenerico2x1
				generic map(
					larguraDados => dataWidth 
				)
				port map(
					entradaA_MUX => out_bank_2,
					entradaB_MUX => imediato,
					seletor_MUX  => sel_mux_2,			-- sel_mux_2 alias da palavra de controle[x]
					saida_MUX	 => out_mux_2
				);
				
				
	ULA: entity work.ULA
        generic map (
            larguraDados => dataWidth
        )
		port map (
				entradaA   => out_bank_1,
            entradaB   => out_mux_2,
            seletor => sel_ula,						-- sel_ula alias da palavra de controle[x]
            saida   => out_ula,
            Z   => Z_out_ula
        );
	
	Mux3: entity work.muxGenerico2x1
				generic map(
					larguraDados => dataWidth 
				)
				port map(
					entradaA_MUX => dadosLeitura,		-- barramento de leitura de dados
					entradaB_MUX => out_ula, 		
					seletor_MUX => sel_mux_3,			-- sel_mux_3 alias da palavra de controle[x]
					saida_MUX	 => out_mux_3
				);


end architecture;
				
				