library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
	Generic ( 
		DATA_WIDTH : natural := 8;
		addrRAMWidth: natural:= 8;
	
		OPCODE_WIDTH: natural := 4;
		CONTROLWORD_WIDTH: natural := 12
	);
	port
	(
		
		clk : in std_logic; 
		barramentoLeituraDados: in  std_logic_vector(DATA_WIDTH-1 downto 0);
		barramentoEscritaDados: out std_logic_vector(DATA_WIDTH-1 downto 0);
		barramentoEnderecos:    out std_logic_vector(addrRAMWidth-1 downto 0);
		barramentoControle: 		out std_logic_vector(1 downto 0);
		programcounter: 	OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		pontosdecontrole:	OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 downto 0);
		
		
			--teste
		  bancoR3:			out std_logic_vector((3-1) downto 0);
		  banco001:			out std_logic_vector((DATA_WIDTH-1) downto 0);
		  saidaA          : out std_logic_vector((DATA_WIDTH -1) downto 0);
        saidaB          : out std_logic_vector((DATA_WIDTH -1) downto 0);
		  entradaA_ULA		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		  entradaB_ULA		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		  saida_ULA			: out std_logic_vector((DATA_WIDTH -1) downto 0)
		
	);
end entity;

architecture processadorArch of processador is
signal out_fd_Z: 														std_logic;
signal out_uc_pontosDeControle: 									std_logic_vector(CONTROLWORD_WIDTH-1 DOWNTO 0);
signal out_fd_opcode:												std_logic_vector(OPCODE_WIDTH-1 DOWNTO 0);


begin

	pontosdecontrole <= out_uc_pontosDeControle;

	UC: entity work.UC
				port map(
						opcode             	=> out_fd_opcode,
						Z_out_ula				=> out_fd_Z,
						pontosDeControle    	=> out_uc_pontosDeControle,
						read_write_ram			=> barramentoControle
				);

	FD: entity work.fluxo_de_dados
				port map(
						pontosDeControle	=> out_uc_pontosDeControle,
						dadosLeitura		=> barramentoLeituraDados,
						opcode				=> out_fd_opcode,
						dadoEscrita			=> barramentoEscritaDados,
						endereco				=> barramentoEnderecos,
						Z_out_ula			=> out_fd_Z,
						programcounter		=> programcounter,
						clk					=> clk,
						bancoR3				=> bancoR3,
						banco001				=> banco001,
						saidaA				=> saidaA,
						saidaB				=> saidaB,
						entradaA_ULA		=> entradaA_ULA,
						entradaB_ULA		=> entradaB_ULA,
						saida_ULA			=> saida_ULA
				);
		
				

end architecture;
