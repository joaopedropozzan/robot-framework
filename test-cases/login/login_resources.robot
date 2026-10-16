*** Settings ***
Documentation     Recursos compartilhados pelos casos de teste de login da Lojinha Web
Library           SeleniumLibrary

*** Variables ***
${URL}                    http://165.227.93.41/lojinha-web/
${BROWSER}                chrome
${USUARIO}                rafael
${SENHA}                  123456
${NOME_COMPLETO}          Rafael    # ajuste para o nome completo cadastrado do usuário
${USUARIO_INATIVO}        paulo
${SENHA_INATIVO}          111111
${MSG_FALHA_LOGIN}        Falha ao fazer login

# Localizadores
${CAMPO_USUARIO}          id:usuario
${CAMPO_SENHA}            id:senha
${BOTAO_ENTRAR}           xpath://button[normalize-space()='Entrar']
${TITULO_LOGIN}           xpath://h4[contains(., 'Acessar a Lojinha')]

*** Keywords ***
Dado que acesso a página home do site
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Lojinha
    Wait Until Element Is Visible    ${TITULO_LOGIN}

Quando digito o usuário
    [Arguments]    ${usuario}
    Wait Until Element Is Enabled    ${CAMPO_USUARIO}
    Input Text    ${CAMPO_USUARIO}    ${usuario}
    # Resultado esperado: o sistema deve permitir a digitação do usuário
    Textfield Value Should Be    ${CAMPO_USUARIO}    ${usuario}

E digito a senha
    [Arguments]    ${senha}
    Wait Until Element Is Enabled    ${CAMPO_SENHA}
    Input Password    ${CAMPO_SENHA}    ${senha}
    # Resultado esperado: o sistema deve permitir a digitação da senha
    Textfield Value Should Be    ${CAMPO_SENHA}    ${senha}

E aciono o botão entrar
    Click Element    ${BOTAO_ENTRAR}

Então devo ver a página de boas vindas com o nome completo
    [Arguments]    ${nome_completo}
    # Resultado esperado: validar usuário/senha e exibir boas vindas com nome completo
    Wait Until Page Contains    Boas vindas    timeout=10s
    Page Should Contain    ${nome_completo}
    Page Should Not Contain Element    ${CAMPO_SENHA}

Então devo ver a mensagem de falha no login
    # Resultado esperado: o sistema deve exibir mensagem de "falha ao fazer login"
    Wait Until Page Contains    ${MSG_FALHA_LOGIN}    timeout=10s
    # Garante que o usuário continua na tela de login
    Element Should Be Visible    ${CAMPO_USUARIO}
