*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${anoNascimento}
${anoNascimentoExterno}


*** Test Cases ***
Cenario de Teste Idade
    ${anoNascimentoExterno}    Dado que a idade for "30" a data de nascimento deve ser retornada
    Verificar se a pessoa nasceu no século passado ${anoNascimentoExterno}


*** Keywords ***
Dado que a idade for "${idade}" a data de nascimento deve ser retornada
    ${anoNascimento}    Evaluate    2022 - ${idade}
    Log To Console    \nO ano de nascimento é: ${anoNascimento}
    RETURN    ${anoNascimento}

Verificar se a pessoa nasceu no século passado ${anoNascimento}
    IF    ${anoNascimento} < 2000
        Log To Console    \nUsuário nasceu no século passado!
    END
