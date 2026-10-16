# Busca de produto no Bing

## Objetivo
Verificar que é possível realizar uma busca no site do Bing e que o termo
pesquisado aparece nos resultados retornados.

## Arquivos
- [`busca.robot`](busca.robot) — caso de teste
- [`busca_resources.robot`](busca_resources.robot) — variáveis e keywords reutilizáveis

## Pré-condições
- Navegador Chrome instalado e compatível com a versão do ChromeDriver em uso.
- Acesso à internet (o teste acessa `https://bing.com`).

## Passos
1. Abrir o navegador.
2. Acessar a página home do Bing.
3. Realizar a pesquisa pelo termo `Nike Force`.
4. Verificar o resultado da busca.

## Resultados esperados
- A página de busca deve carregar e exibir o campo de pesquisa.
- Após pesquisar, os resultados devem conter o termo buscado (`Nike Force`).

## Como executar
```bash
robot test-cases/busca-produto/busca.robot
```
