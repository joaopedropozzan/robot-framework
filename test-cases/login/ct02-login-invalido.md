# CT02 - Login com usuário inativo

## Objetivo
Verificar que um usuário **inativo** não consegue efetuar login na aplicação
**Lojinha Web** e que o sistema exibe a mensagem de falha correspondente.

## Arquivo
[`ct02_login_invalido.robot`](ct02_login_invalido.robot) (usa os recursos compartilhados em
[`login_resources.robot`](login_resources.robot))

## Pré-condições
- A aplicação está disponível em `http://165.227.93.41/lojinha-web/`.
- Existe um usuário inativo cadastrado (`paulo` / `111111`).

## Passos
1. Acessar a página home do site.
2. Digitar o usuário inativo no campo `usuario`.
3. Digitar a senha no campo `senha`.
4. Clicar no botão **Entrar**.

## Resultados esperados
1. A página home da Lojinha deve ser exibida (título "Lojinha").
2. O sistema deve permitir a digitação do usuário no campo correspondente.
3. O sistema deve permitir a digitação da senha no campo correspondente.
4. O sistema deve exibir a mensagem **"Falha ao fazer login"** e manter o
   usuário na tela de login.

## Evidência de execução
A execução registrada em [`evidencias/`](evidencias) (log, relatório e
screenshots gerados pelo Robot Framework/SeleniumLibrary) mostra este caso (CT02)
falhando nessa rodada — a mensagem "Falha ao fazer login" não apareceu a tempo —
útil como exemplo real de relatório de defeito para a disciplina de V&V.

## Como executar
```bash
robot test-cases/login/ct02_login_invalido.robot
```
