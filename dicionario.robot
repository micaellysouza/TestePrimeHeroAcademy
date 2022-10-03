*** Settings ***
Library     SeleniumLibrary


*** Variables ***
&{PESSOA}       nome=Bruno Castro    idade= 25    rua=Rua dos Paraenses    numero=88A    cep=06665-115    cidade=São Paulo    estado=São Paulo


*** Test Cases ***
Cenario de Teste Dicionário
    Testando um dicionario


*** Keywords ***
Testando um dicionario
#Dicionário
    Log To Console
    ...    \nNome: ${PESSOA.nome} \nidade: ${PESSOA.idade} \nrua: ${PESSOA.rua} \nnumero: ${PESSOA.numero} \ncep: ${PESSOA.cep} \ncidade: ${PESSOA.cidade} \nestado: ${PESSOA.estado}
