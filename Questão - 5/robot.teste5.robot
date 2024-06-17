*** Settings ***
Library  Collections

*** Variables ***
${USUARIO}    exemplo_usuario
${SENHA}      senha_inicial

*** Test Cases ***
Alterar Senha
    [Documentation]    
    Setup Credenciais
    Alterar Senha No Dicionário
    Exibir Dicionário
    Teardown Restaurar Senha

*** Keywords ***
Setup Credenciais
    [Documentation]    
    ${CREDS}=    Create Dictionary    Usuário=${USUARIO}    Senha=${SENHA}
    Set Test Variable    ${CREDS}

Alterar Senha No Dicionário
    [Documentation]    Altera o valor da senha no dicionário
    ${CREDS}=    Set To Dictionary    ${CREDS}    Senha    senha_nova12356789
    Set Test Variable    ${CREDS}

Exibir Dicionário
    [Documentation]    Exibe o dicionário com a senha alterada
    Log    ${CREDS}

Teardown Restaurar Senha
    [Documentation]    Restaura o valor da senha para o inicial
    ${CREDS}=    Set To Dictionary    ${CREDS}    Senha    ${SENHA}
    Log    Senha restaurada para o valor inicial: ${CREDS}[Senha]
