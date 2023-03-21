*** Settings ***
Documentation   Valida Escolha de Produto no App do Extra


Resource        ../Resource/Base.robot

Test Setup      Log to console    \n==== INICIO DA AUTOMACAO ====
Test Teardown   Close Application
Suite Setup     Log to console    == Suite: APP EXTRA ==


*** Test Cases ***

Escolher produto
    [Documentation]    Escolha do produto obs como o app é comercial pode haver variação no preço no momento da correção
    [Tags]    geladeira

    Dado que estou na tela inicial
    Quando eu pesquisar pelo produto
    E clico no produto
    E verifico nome e preco e clico no produto
    E escolho a variacao de voltagem
    E prosigo sem garantia extra
    E adiciono ao carrinho
    Entao verifico nome e preco e voltagem





