*** Settings ***
Documentation       Demonstração


*** Test Cases ***
Exercício
    Exibir quantidade de numeros par


*** Keywords ***
Exibir quantidade de numeros par
    ${qt_numero_par} =    Set Variable    0
    FOR    ${i}    IN RANGE    0    10
        IF    ${i} % 2 == 0
            ${qt_numero_par} =    Evaluate    ${qt_numero_par} + 1
        END
    END
    Log To Console    .
    Log To Console    ------------------------------
    Log To Console    quantidade de numeros par: ${qt_numero_par}
    Log To Console    ------------------------------