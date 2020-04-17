library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calculadora is
	Generic ( 
		DATA_WIDTH : natural := 8;
		addrRAMWidth: natural:= 8;
		
		DATA_ROM_WIDTH: natural := 18;
		OPCODE_WIDTH: natural := 4;
		CONTROLWORD_WIDTH: natural := 12
	);
	port
	(
		-- Entradas (placa)
		CLOCK_50 : in std_logic; 
		SW : in std_logic_vector(17 downto 0); -- existem 18 - uso 16
		KEY : in std_logic_vector(3 downto 0); -- existem 4 - uso 2
		
		
		-- Saidas (placa)
		LEDR : out std_logic_vector(17 downto 0);-- := (others => '0');
		LEDG : out std_logic_vector(8 downto 0);
		
		enderecamento: out std_logic_vector(7 downto 0);
		programcounter: 	OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		pontosdecontrole:	OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 downto 0);
		
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0); --Saida para os displays
		
					--teste
		  bancoR3:			out std_logic_vector((3-1) downto 0);
		  banco007:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  banco003:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  banco004:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  banco001:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  banco002:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  banco006:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  saidaA          : out std_logic_vector((DATA_WIDTH -1) downto 0);
        saidaB          : out std_logic_vector((DATA_WIDTH -1) downto 0);
		  entradaA_ULA		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		  entradaB_ULA		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		  saida_ULA			: out std_logic_vector((DATA_WIDTH -1) downto 0);
		  Z_out_ula			: out std_logic;
		  sinal_estendido :  out std_logic_vector((14 -1) downto 0);
		  saida_somador	:  out std_logic_vector((14 -1) downto 0)
		
	);
end entity;

architecture calculadoraArch of calculadora is

signal barramentoEscritaDados, barramentoLeituraDados, sig_button :	std_logic_vector(DATA_WIDTH-1 downto 0);
signal barramentoEnderecos : 										std_logic_vector(addrRAMWidth-1 downto 0);
signal barramentoControle :										std_logic_vector(1 downto 0);
signal habilita:			 											std_logic_vector(14 DOWNTO 0);	-- blocos de habilitacoes
signal clk, out_fd_Z: 												std_logic;
signal out_uc_pontosDeControle: 									std_logic_vector(CONTROLWORD_WIDTH-1 DOWNTO 0);
signal out_fd_opcode:												std_logic_vector(OPCODE_WIDTH-1 DOWNTO 0);

signal dado_hex_0_1: 														std_logic_vector(DATA_WIDTH-1 downto 0);

signal dado_hex_2_3: 														std_logic_vector(DATA_WIDTH-1 downto 0);

signal dado_hex_4_5: 														std_logic_vector(DATA_WIDTH-1 downto 0);

signal dado_hex_6_7: 														std_logic_vector(DATA_WIDTH-1 downto 0);
--signal out_fd

signal program_counter: 													std_logic_vector(14-1 downto 0);	
	

alias habilita_ram:					std_logic is habilita(0);
alias habilita_chave_0_7:			std_logic is habilita(1);
alias habilita_chave_8_15: 		std_logic is habilita(2);
alias habilita_chave_16_17:		std_logic is habilita(3);
alias habilita_LED_R_0_7: 			std_logic is habilita(4);
alias habilita_LED_R_8_15: 		std_logic is habilita(5);
alias habilita_LED_G_0_7: 			std_logic is habilita(6);
alias habilita_but_0_prox_input: std_logic is habilita(7);
alias habilita_clean_button: 		std_logic is habilita(8);
alias habilita_but_2: 				std_logic is habilita(9);
alias habilita_but_3: 				std_logic is habilita(10);
alias habilita_hex_0_1: 			std_logic is habilita(11);
alias habilita_hex_2_3: 			std_logic is habilita(12);
alias habilita_hex_4_5: 			std_logic is habilita(13);
alias habilita_hex_6_7: 			std_logic is habilita(14);


begin
	clk <= CLOCK_50;
	
--	Divisor:	entity work.divisorGenerico
--				port map(
--					clk			=> CLOCK_50, 
--					saida_clk	=> clk
--				);

	Processador: entity work.processador
				port map (
					clk => clk,
					barramentoLeituraDados => barramentoLeituraDados,
					barramentoEscritaDados => barramentoEscritaDados,
					barramentoEnderecos => barramentoEnderecos,
					barramentoControle => barramentoControle,
					programcounter => program_counter,
					pontosdecontrole => pontosdecontrole,
					bancoR3 => bancoR3,
					banco007 => banco007,
					banco003 => banco003,
					banco004 => banco004,
					saidaA => saidaA,
					saidaB => saidaB,
					entradaA_ULA		=> entradaA_ULA,
					entradaB_ULA		=> entradaB_ULA,
					saida_ULA			=> saida_ULA, 
					Z_out_ula			=> Z_out_ula,
					sinal_estendido 	=> sinal_estendido,
					saida_somador		=> saida_somador,
					banco001			=> banco001,
					banco002			=> banco002,
					banco006			=> banco006
					
				);

			programcounter <= program_counter;
			
	RAM: entity work.memoriaRAM
            port map (
				clk => clk, 
				addr => barramentoEnderecos(6 downto 0), 
				we => barramentoControle(0), 
				re => barramentoControle(1), 
				habilita => habilita_ram,
				dado_in => barramentoEscritaDados, 
				dado_out => barramentoLeituraDados
				);
				
				
	decodificador: entity work.decodificador	
				port map (
				endereco => barramentoEnderecos,
				leitura 	=> barramentoControle(1), -- read
				escrita 	=> barramentoControle(0), -- write
				habilita => habilita
				);
	
	enderecamento <= barramentoEnderecos;
	
	saidaLED_Vermelhos: entity work.interfaceLEDs
				port map (
				clk => clk, 
				entrada => barramentoEscritaDados, 
				saida => LEDR(DATA_WIDTH-1 downto 0), 
				habilita => habilita_LED_R_0_7 
				);
				
	LEDG(DATA_WIDTH-1 downto 0) <= program_counter(7 downto 0);
				
--	saidaLED_Verdes: entity work.interfaceLEDs
--				port map (
--				clk => clk, 
--				entrada => program_counter(7 downto 0), 
--				saida => LEDG(DATA_WIDTH-1 downto 0), 
--				habilita => habilita_LED_G_0_7 
--				);

	entradaChaves_0_7: entity work.interfaceCHAVES
				port map (
				entrada => SW(DATA_WIDTH-1 downto 0), 
				saida => barramentoLeituraDados(DATA_WIDTH-1 downto 0), 
				habilita => habilita_chave_0_7
				);
				
				
	entradaChaves_8_15: entity work.interfaceCHAVES
				port map (
				entrada => SW(DATA_WIDTH+DATA_WIDTH-1 downto DATA_WIDTH), 
				saida => barramentoLeituraDados(DATA_WIDTH-1 downto 0), 
				habilita => habilita_chave_8_15
				);
				
	entradaChaves_17: entity work.interfaceCHAVES
				port map (
				entrada => SW(DATA_WIDTH+DATA_WIDTH+1 downto 17) & "0000000", 		-- 17 ate 16
				saida => barramentoLeituraDados(DATA_WIDTH-1 downto 0), 
				habilita => habilita_chave_16_17
				);
				
	entradaChaves_16: entity work.interfaceCHAVES
				port map (
				entrada => "0" & SW(16 downto 16) & "000000", 		-- 17 ate 16
				saida => barramentoLeituraDados(DATA_WIDTH-1 downto 0), 
				habilita => habilita_chave_16_17
				);
				
				
--		Botao: entity work.button
--		Port Map(
--				key_in 			=> KEY(0 downto 0), 		
--				key_out 			=> ,
--				enable_edge 	=> habilita_but_0_prox_input,
--				enable_flip 	=> habilita_clean_button,
--				but_clean		=> ,
--				clk				=> clk
--		);

	
	 DISPLAY0_1 : entity work.doubleHex7
					port map( 
							din => barramentoEscritaDados,
							dout => dado_hex_0_1, 
							habilita => habilita_hex_0_1,
							clk => clk
					);
					
	DISPLAY2_3 : entity work.doubleHex7
					port map( 
							din => barramentoEscritaDados,
							dout => dado_hex_2_3, 
							habilita => habilita_hex_2_3,
							clk => clk
					);
					
					
	DISPLAY4_5 : entity work.doubleHex7
					port map( 
							din => barramentoEscritaDados,
							dout => dado_hex_4_5, 
							habilita => habilita_hex_4_5,
							clk => clk
					);
					
					
	DISPLAY6_7 : entity work.doubleHex7
					port map( 
							din => barramentoEscritaDados,
							dout => dado_hex_6_7, 
							habilita => habilita_hex_6_7,
							clk => clk
					);
	 
	 
	 DISPLAY0 : entity work.conversorHex7seg port map (saida7seg => HEX0, dadoHex => dado_hex_0_1(3 downto 0));
	 DISPLAY1 : entity work.conversorHex7seg port map (saida7seg => HEX1, dadoHex => dado_hex_0_1(7 downto 4));
	 
	 DISPLAY2 : entity work.conversorHex7seg port map (saida7seg => HEX2, dadoHex =>  dado_hex_2_3(3 downto 0));	 
	 DISPLAY3 : entity work.conversorHex7seg port map (saida7seg => HEX3, dadoHex => dado_hex_2_3(7 downto 4));	
	 
	 DISPLAY4 : entity work.conversorHex7seg port map (saida7seg => HEX4, dadoHex =>  dado_hex_4_5(3 downto 0));	 
	 DISPLAY5 : entity work.conversorHex7seg port map (saida7seg => HEX5, dadoHex =>  dado_hex_4_5(7 downto 4));	 
	 
	 DISPLAY6 : entity work.conversorHex7seg port map (saida7seg => HEX6, dadoHex =>  dado_hex_6_7(3 downto 0));
	 DISPLAY7 : entity work.conversorHex7seg port map (saida7seg => HEX7, dadoHex => dado_hex_6_7(7 downto 4));
	
	

end architecture;