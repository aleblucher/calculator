"""
Baseado no código do Marco Mello
"""

import re #remover espaços em brancos e tabs
import numpy as np
from Reservados import *

assembly = 'ASM.txt'
destinoBIN = 'BIN.txt'
destinoMIF = 'InitROM.mif'

genMIF = 0



with open(assembly) as f:
    count = 0
    Labels = {}
    with open(destinoBIN, "w") as f1:
        for line in f:
            count = count+1
            if '-' in line:
                line = re.split('-',line)  ##remove comentários
                line = line[0] 
                #f1.write(line+'\n')
                  
                
            if '\t' or ',' or ' '  in line:
                line = re.sub('\t','',line) #Remover Tabs (\t)
                
                line = re.sub('[.]','temp',line) #substitui os pontos pela string "temp"
                
                line = re.sub('\W+',',',line) # \W = Não-words (caracteres que não letras ou números)
                                              # + = Ocorrênciais seguidas   (Ex: -- ou ## ou ,, ou "  ") 
                                              
                line = re.sub(',$',':',line)  # Linhas terminadas com ',' nos casos de Label, coloca ':'
                                              
                line = re.sub('temp','.',line) #substitui as string "temp" por ponto

                #f1.write(line+'\n')
                                               
            if ':' in line:
                line = re.sub(':','',line)
                Labels[line] = str(count-1)
                line = ''
                f1.write(line)
            else:
                f1.write(line+'\n')
    


print(Labels)   
f.close()
f1.close()

###########################INICIO DE CONVERSAO PARA BINARIO##############
if genMIF == 0 :
    with open(destinoBIN, "r") as f:
        lines = f.readlines()
        with open(destinoBIN, "w") as f:
            for line in lines:  
                if '.' in line:
                    
                    line = re.sub('[\n]','',line)
                    line = re.sub('[.]','',line)
                    line = re.split(',',line)
                    
                    #line[1] = Labels[line[1]]
                    
                    line = ','.join(line)

                
                line = re.sub('\n','',line)
                line = re.split(',',line)
    
                for i in range (0,len(line)):
                    if line[i] in Reserved:
                        line[i] = Reserved[line[i]]
                    
                ############
                    # else:
                    #     if(len(line) == 4):
                    #         line[i] = str(np.binary_repr(int(line[i],16))).zfill(5)
                    #     else:
                    #         line[i] = str(np.binary_repr(int(line[i],16))).zfill(8)

                line = ''.join(line)
                f.write(line+'\n')          
    f.close()
###############========================================##################
    


