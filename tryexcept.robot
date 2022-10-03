*** Settings ***
Library     Collections


*** Variables ***
@{LETRASENUMEROS}       "A"    1    "B"    2    "C"    3
@{NOVALISTA}


*** Test Cases ***
Cenario de Teste Try + Except + Finally
    Verificar se apenas numeros estao sendo adicionados a lista

*** Keywords ***
Verificar se apenas numeros estao sendo adicionados a lista
    FOR    ${element}    IN    @{LETRASENUMEROS}
        TRY
            IF    isinstance(${element}, int)
                Append To List    ${NOVALISTA}    ${element}
            ELSE
                Log To Console    O caracter inserido não é um número inteiro!
            END
        EXCEPT
            Fail    Houve um problema inesperado
        FINALLY
            Log To Console    ${NOVALISTA}
        END
    END
