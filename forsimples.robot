*** Settings ***
Documentation       Exemplos de tipos de variáveis: SIMPLES e LISTA


*** Variables ***
@{FRUTAS}       maça    morango    manga    banana    uva    pera    abacaxi


*** Test Cases ***
Cenario de Teste For Simples + Lista
    Exibir cada uma das frutas da lista

*** Keywords ***
Exibir cada uma das frutas da lista
    FOR    ${element}    IN    @{FRUTAS}
        Log To Console    \n${element}
    END
