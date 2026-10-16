*** Settings ***
Documentation     CT02 - Login com usuário inativo na Lojinha Web
Resource          login_resources.robot
Test Teardown     Close Browser

*** Test Cases ***
CT2 - Realizar login com usuário inativo
    [Tags]    login    ct2
    Dado que acesso a página home do site
    Quando digito o usuário    ${USUARIO_INATIVO}
    E digito a senha    ${SENHA_INATIVO}
    E aciono o botão entrar
    Então devo ver a mensagem de falha no login
