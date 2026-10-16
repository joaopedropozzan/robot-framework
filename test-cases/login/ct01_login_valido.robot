*** Settings ***
Documentation     CT01 - Login com usuário ativo na Lojinha Web
Resource          login_resources.robot
Test Teardown     Close Browser

*** Test Cases ***
CT1 - Realizar login com usuário ativo
    [Tags]    login    ct1
    Dado que acesso a página home do site
    Quando digito o usuário    ${USUARIO}
    E digito a senha    ${SENHA}
    E aciono o botão entrar
    Então devo ver a página de boas vindas com o nome completo    ${NOME_COMPLETO}
