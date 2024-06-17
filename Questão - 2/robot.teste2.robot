*** Settings ***
Documentation       Demonstração


*** Variables ***
${idade}=       25
${ano}=         2024


*** Test Cases ***
Exercicio
    Exibir ano de nascimento


*** Keywords ***
Exibir ano de nascimento
    ${ano_nascimento}    Evaluate    ${ano} - ${idade}
    IF    ${ano_nascimento} <= 2000
        Log To Console    .
        Log To Console    ------------------------------
        Log To Console    Você nasceu no século passado!
        Log To Console    ------------------------------
    ELSE
        Log To Console    O ano de nascimento é: ${ano_nascimento}
    END