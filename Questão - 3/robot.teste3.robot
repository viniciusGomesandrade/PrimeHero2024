*** Settings ***
Documentation       Demonstração


*** Variables ***
@{frutas}       laranja    abacate    limão    banana    maçã


*** Test Cases ***
Exercicio
    Exibir frutas com o comando for


*** Keywords ***
Exibir frutas com o comando for
    FOR    ${fruta}    IN    @{frutas}
        Log To Console    ------------------------------
        Log To Console    Fruta: ${fruta}
        Log To Console    ------------------------------
    END