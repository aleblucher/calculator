library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 8;
        larguraEndBancoRegs : natural := 3   --Resulta em 2^3=8 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk       		: in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC        : in std_logic := '0';
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0);
		  
		  
		  --teste
		  bancoR3:			out std_logic_vector((larguraEndBancoRegs-1) downto 0);
		  banco007:			out std_logic_vector((larguraDados-1) downto 0);
		  banco001:			out std_logic_vector((larguraDados-1) downto 0);
		  banco002:			out std_logic_vector((larguraDados-1) downto 0);
		  banco006:			out std_logic_vector((larguraDados-1) downto 0);
		  banco003:			out std_logic_vector((larguraDados-1) downto 0);
		  banco004:			out std_logic_vector((larguraDados-1) downto 0)
		  
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
	bancoR3 <= enderecoC;
	banco007 <= registrador(7);
	banco003 <= registrador(3);
	banco004 <= registrador(4);	
	banco002 <= registrador(2);	
	banco006 <= registrador(6);	
	banco001 <= registrador(1);	
	
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(enderecoA)));
         end if;
         if (unsigned(enderecoB) = 0) then
            saidaB <= (others => '0');
         else
            saidaB <= registrador(to_integer(unsigned(enderecoB)));
        end if;
     end process;
end architecture;


