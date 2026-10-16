*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${BROWSER}            Chrome
${URL}                https://bing.com
${CAMPO_BUSCA}        name:q
${TERMO_BUSCA}        Nike Force
${RESULTADO_SELECTOR}    css:li.b_algo

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Acessar a pagina home do site
    Go To    ${URL}
    Wait Until Page Contains Element    ${CAMPO_BUSCA}    timeout=10s

Realizar pesquisa no site
    Input Text    ${CAMPO_BUSCA}    ${TERMO_BUSCA}
    Press Keys    ${CAMPO_BUSCA}    RETURN
    Wait Until Page Contains Element    ${RESULTADO_SELECTOR}    timeout=10s

Verificar resultado da busca
    Page Should Contain    ${TERMO_BUSCA}

Fechar o navegador
    Capture Page Screenshot
    Close Browser

