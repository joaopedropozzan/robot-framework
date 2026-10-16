# CT01 - Login com usuário ativo

## Objetivo
Verificar que um usuário ativo e cadastrado consegue efetuar login na aplicação
**Lojinha Web** informando usuário e senha válidos.

## Arquivo
[`ct01_login_valido.robot`](ct01_login_valido.robot) (usa os recursos compartilhados em
[`login_resources.robot`](login_resources.robot))

## Pré-condições
- A aplicação está disponível em `http://165.227.93.41/lojinha-web/`.
- Existe um usuário ativo cadastrado (`rafael` / `123456`).

## Passos
1. Acessar a página home do site.
2. Digitar o usuário no campo `usuario`.
3. Digitar a senha no campo `senha`.
4. Clicar no botão **Entrar**.

## Resultados esperados
1. A página home da Lojinha deve ser exibida (título "Lojinha").
2. O sistema deve permitir a digitação do usuário no campo correspondente.
3. O sistema deve permitir a digitação da senha no campo correspondente.
4. O sistema deve validar usuário e senha e exibir uma mensagem de boas-vindas
   com o nome completo do usuário, sem mais exibir o campo de senha.

## Como executar
```bash
robot test-cases/login/ct01_login_valido.robot
```
