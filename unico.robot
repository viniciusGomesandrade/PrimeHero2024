*** Settings ***
Resource    Questão - 1/teste1.robot
Resource    Questão - 2/robot.teste2.robot
Resource    Questão - 3/robot.teste3.robot
Resource    Questão - 4/robot.teste4.robot
Resource    Questão - 5/robot.teste5.robot

*** Test Cases ***
Executar Todos os Exercícios
    [Documentation]    Executar todos os exercícios juntos
    Teste Questão 1
    Teste Questão 2
    Teste Questão 3
    Teste Questão 4
    Teste Questão 5

*** Keywords ***
Teste Questão 1
    [Documentation]    Testar a questão 1
    Log    Teste para Questão 1

Teste Questão 2
    [Documentation]    Testar a questão 2
    Log    Teste para Questão 2

Teste Questão 3
    [Documentation]    Testar a questão 3
    Log    Teste para Questão 3

Teste Questão 4
    [Documentation]    Testar a questão 4
    Log    Teste para Questão 4

Teste Questão 5
    [Documentation]    Testar a questão 5
    Log    Teste para Questão 5

