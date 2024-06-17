*** Settings ***
Library  Collections

*** Variables ***
&{ROBOT_INFO}   nome=Usuario   idade=10   rua=Rua dos santos   numero=4555   cep=98765-000   bairro=18   cidade=Inovação   estado=SE

*** Test Cases ***
Exibir Informações Do dicionario

    Log To Console  Nome: ${ROBOT_INFO['nome']}
    Log To Console  Idade: ${ROBOT_INFO['idade']}
    Log To Console  Rua: ${ROBOT_INFO['rua']}
    Log To Console  Número: ${ROBOT_INFO['numero']}
    Log To Console  CEP: ${ROBOT_INFO['cep']}
    Log To Console  Bairro: ${ROBOT_INFO['bairro']}
    Log To Console  Cidade: ${ROBOT_INFO['cidade']}
    Log To Console  Estado: ${ROBOT_INFO['estado']}
