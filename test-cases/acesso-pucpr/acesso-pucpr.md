# Acesso ao site da PUCPR

## Objetivo
Teste de fumaça (smoke test) simples para verificar que o site da PUCPR
(`https://www.pucpr.br/`) abre corretamente no navegador. Foi o primeiro teste
criado neste repositório, usado para validar o setup inicial do Robot
Framework + SeleniumLibrary.

## Arquivo
[`puc.robot`](puc.robot)

## Pré-condições
- Navegador Chrome instalado e compatível com a versão do ChromeDriver em uso.
- Acesso à internet.

## Passos
1. Abrir o site da PUCPR no navegador.

## Resultado esperado
- O navegador abre e carrega a página sem erros.

## Como executar
```bash
robot test-cases/acesso-pucpr/puc.robot
```
