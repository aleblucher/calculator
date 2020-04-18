INS = {}

INS_RESERVADO = [
       "ADD",      
       "SUB",
       "AND",
       "OR",
       "XOR",
       "NOT",
       "JUMP",
       "LOAD",
       "STORE",
       "BEQ"
       ]

INS_BIN = [
       "0000", # add
       "0001", # sub
       "0110", # and
       "0111", # or
       "1001", # xor
       "1000", # not
       "0010", # jump
       "0100", # load
       "0101", # store
       "0011"  # beq
       ]

for i in range(0, len(INS_BIN)):
    INS[INS_RESERVADO[i]] = INS_BIN[i]
    

REG = {}

REG_RESERVADO = [
       "R0",      
       "R1",
       "R2",
       "R3",
       "R4",
       "R5",
       "R6",
       "R7"
       ]

REG_BIN = [
       "000",      
       "001",
       "010",
       "011",
       "100",
       "101",
       "110",
       "111"
       ]

for i in range(0, len(REG_BIN)):
    REG[REG_RESERVADO[i]] = REG_BIN[i]
    
ADR = {}

ADR_RESERVADO = [
       "chave_0_7",      
       "chave_8_15",
       "chave_16_17",
       "LED_R_0_7",
       "LED_R_8_15",
       "LED_G_0_7",
       "sete_segmentos_0",
       "sete_segmentos_1",
       "sete_segmentos_2",
       "sete_segmentos_3",
       "ADDR_ZERO",
       "ADDR_UM",
       "ADDR_DOIS", 
       "ADDR_TRES",
       "ADDR_QUATRO",
       "ADDR_CINCO", 
       "ADDR_SEIS", 
       "ADDR_SETE",
       "ADDR_OITO",
       "ADDR_NOVE",
       "ADDR_DEZ"
       ]

ADR_BIN = [
       "10000010",   # chave_0_7        : 130   
       "10000011",   # chave_8_15       : 131
       "10000100",   # chave_16_17      : 132
       "11001000",   # LED_R_0_7        : 200
       "10001000",   # clean_button     : 136
       "10000111",   # but_0_prox_input : 135
       "11001101",   # sete_segmentos_0 : 205
       "11001110",   # sete_segmentos_1 : 206
       "11001111",   # sete_segmentos_2 : 207
       "11010000",   # sete_segmentos_3 : 208
       "00000000",
       "00000001",
       "00000010",
       "00000011",
       "00000100",
       "00000101",
       "00000110",
       "00000111",
       "00001000",
       "00001001",
       "00001010",
       ]

for i in range(0, len(ADR_BIN)):
    ADR[ADR_RESERVADO[i]] = ADR_BIN[i]


OP = {}


OP_RESERVADO = [
       "OPADD",      
       "OPSUB",
       "OPAND",
       "OPOR",
       "OPXOR",
       "OPNOT",
       "OPMULT",
       "OPDIV",
       ]

OP_BIN = [
       "00000001", # add
       "00000010", # sub
       "01000000", # and
       "00010000", # or
       "00100000", # xor
       "10000000", # not
       "00000100", # mult
       "00001000", # div
       ]

for i in range(0, len(OP_BIN)):
    OP[OP_RESERVADO[i]] = OP_BIN[i]
    

Reserved = INS
Reserved.update(REG)
Reserved.update(ADR)
Reserved.update(OP)