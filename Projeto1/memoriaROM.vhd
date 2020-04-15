library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 14;
			 oPcode_Width: natural := 4
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

-- Formato das instrucoes:
--alias enderecoRAM: std_logic_vector(addrWidth-1 DOWNTO 0) is Instrucao(addrWidth-1 downto 0);
--alias imediatoDado: std_logic_vector (dataWidth-1 DOWNTO 0) is Instrucao(dataWidth-1 downto 0);
--alias imediatoEndereco: std_logic_vector (addrWidth-1 DOWNTO 0) is Instrucao(addrWidth-1 downto 0);
--
--alias habLeituraBarramento: std_logic is Instrucao(dataROMWidth-1);
--alias habEscritaBarramento: std_logic is Instrucao(dataROMWidth-2);
--alias habAcumulador: std_logic is Instrucao(dataROMWidth-3);
--alias sel_Imediato_RAM: std_logic is Instrucao(dataROMWidth-4);
--alias operacaoULA: std_logic is Instrucao(dataROMWidth-5);
--alias sel_MUX_Jump: std_logic is Instrucao(dataROMWidth-6);

--Bit Instrucao---->        14                   13               12              11          10,9           8         7~0
--Instrução       |habLeituraBarramento|habEscritaBarramento|habAcumulador|sel_Imediato_RAM|operacaoULA|sel_MUX_Jump|Imediato| 
--Soma RAM        |          1         |         0          |      1      |       0        |    00     |     0      |Endereco|
--Soma Imediato   |          1         |         0          |      1      |       1        |    00     |     0      | Valor  |
--Subtrai RAM     |          1         |         0          |      1      |       0        |    01     |     0      |Endereco|
--Subtrai Imediato|          1         |         0          |      1      |       1        |    00     |     0      | Valor  |
--LW              |          1         |         0          |      1      |       0        |    1X     |     0      |Endereco|
--SW              |          0         |         1          |      0      |       X        |     X     |     0      |Endereco|
--J               |          0         |         0          |      0      |       X        |     X     |     1      |Endereco|

--Soma RAM:     1010000_EnderecoRAM
--Subtrai RAM:  1010010_EnderecoRAM
--Soma Imed:    1011000_Imediato
--Subtrai Imed: 1011010_EnderecoRAM
--LW:           1010100_EnderecoRAM
--SW:           0100100_EnderecoRAM
--Jump:         0000001_EnderecoROM

-- "0000";	-- add
-- "0001";	-- sub
-- "0010";	-- jump
-- "0011";	-- beq
-- "0100";	-- load
-- "0101";	-- store
-- "0110";	-- and
-- "0111";	-- or
-- "1000";	-- not
-- "1001";	-- xor

subtype opCode_t is std_logic_vector(oPcode_Width-1 downto 0);
constant add    	  : opCode_t := "0000";
constant sub		  : opCode_t := "0001";
constant jump	     : opCode_t := "0010";
constant beq		  : opCode_t := "0011";
constant LW         : opCode_t := "0100";
constant SW         : opCode_t := "0101";
constant op_and     : opCode_t := "0110";
constant op_or      : opCode_t := "0111";
constant op_not     : opCode_t := "1000";
constant op_xor     : opCode_t := "1001";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  -- Inst I:
  --		Opcode (4 bits) + Reg3 (3 bits) + Reg1 (3 bits) + Imediato (8 bits)
  
  
        tmp(0) := LW & "001" & "000" & "10000010";  --Endereco 130 Le chave
		  tmp(1) := add & "001" & "001" & "001" & "00000";
        tmp(2) := SW & "001" & "000" & "11001000";  --Endereco 200 Escreve LEDs
-- 	  tmp(3) := beq & "001" & "001" & "00000010";  -- Soma 1
		  tmp(4) := SW & "001" & "000" & "11001101";  --Endereco 200 Escreve LEDs
--        tmp(4) := SW & "01000000";  --Endereco 64  Salva RAM
--		  tmp(5) := SomaImed & "00000001";   -- Soma 1
--        tmp(6) := SW & "01000001";  --Endereco 65
--		  tmp(7) := LW & "01000000";  --Endereco 64  Le RAM
--		  tmp(8) := LW & "01000001";  --Endereco 65  Le RAM
--		  tmp(9) := SW & "11000000";  --Endereco 192 Escreve LEDs
--        tmp(2) := Jump & "00000000000000";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
