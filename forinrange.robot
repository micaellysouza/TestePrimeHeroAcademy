*** Variables ***
# ${contadorDeNumerosPares}
${contagem}
${total}

*** Test Cases ***
Cenario de Teste For In Range + IF Inline
    Verificar a quantidade de numeros pares de 0 a 10

*** Keywords ***
Verificar a quantidade de numeros pares de 0 a 10

    FOR    ${counter}    IN RANGE    0    11
        Continue For Loop IF    ${counter} % 2 == 0
        ${total}     Evaluate     ${total}+1
    END
    Log To Console     \n A quantidade de total de números pares é: ${total}
