# Análise de Vendas — Online Retail

## Sobre o projeto

Este projeto tem como objetivo desenvolver e aplicar habilidades de análise de dados utilizando **SQL** para consulta e tratamento dos dados e **Microsoft Excel** para análise e visualização.

Os dados representam o comportamento das vendas de um e-commerce fictício durante o período de **19 de março de 2024 a 19 de março de 2025**. A base original possui **1.000 registros e 13 colunas**.

**Dataset:** [Online Retail & E-Commerce — Kaggle](https://www.kaggle.com/datasets/ertugrulesol/online-retail-data)

## Objetivo

Compreender o desempenho das vendas do e-commerce, identificando os principais fatores relacionados à geração de faturamento, ao comportamento dos consumidores e à evolução das vendas ao longo do período analisado.

## Perguntas de negócio

- Qual foi o faturamento total acumulado no período analisado?
- Como o faturamento se comportou ao longo dos meses?
- Há grandes variações nas vendas?
- Quais categorias de produtos geraram maior faturamento?
- Quais foram os 5 produtos com maior faturamento?
- Qual faixa etária apresentou maior participação no faturamento?
- Qual foi a forma de pagamento mais utilizada pelos consumidores?

## Ferramentas

- **MySQL Workbench** — consultas e análise dos dados
- **Microsoft Excel** — análise, visualização e dashboard
- **Google Docs** — documentação do projeto

## Principais resultados

- Faturamento total: **$737.327,88**
- Valor médio por registro: **aproximadamente $737,33**
- As cinco categorias apresentaram participações entre **20% e 22%** do faturamento.
- Os cinco produtos com maior faturamento representaram aproximadamente **25% da receita total**.
- A faixa etária de **56 a 65 anos** apresentou o maior faturamento, totalizando **$145.840,47**.
- **Cash on Delivery** apresentou a maior participação nas transações, com aproximadamente **37%**.
- Entre 962 cidades analisadas, quatro apresentaram faturamento pelo menos quatro vezes superior à média. **Port Melissaborough** apresentou o maior faturamento, com **$3.941,29**, aproximadamente cinco vezes a média das cidades.

## Principais insights

### 1. Concentração de receita por produto

Smartphone, Notebook, Yoga Mat, Soccer Ball e Tablet são responsáveis por aproximadamente **25% do faturamento total**. Essa concentração indica que esses produtos merecem maior atenção no acompanhamento de estoque, disponibilidade e desempenho de vendas.

### 2. Perfil dos consumidores

Clientes entre **56 e 65 anos** apresentaram o maior faturamento entre as faixas etárias analisadas. Os cinco produtos com maior volume de compras nessa faixa foram **Yoga Mat, Laptop, Tablet, Smartphone e Basketball**.

Esses dados podem orientar a equipe comercial na avaliação de campanhas e ofertas direcionadas a esse perfil de consumidor.

### 3. Desempenho por cidade

**Port Melissaborough** apresentou faturamento aproximadamente cinco vezes superior à média das cidades analisadas, indicando que esse mercado merece uma análise mais aprofundada.

A empresa pode investigar quais produtos, perfis de consumidores e formas de pagamento contribuem para esse desempenho. As demais cidades com faturamento significativamente superior à média também podem ser analisadas sob a mesma perspectiva.

## Dashboard

![Dashboard de vendas](images/dashboard.png)

## Limitações da análise

- O dataset possui aproximadamente **13 meses de dados**, limitando a capacidade de identificar padrões sazonais recorrentes.
- A análise considera apenas o faturamento e não possui informações sobre **custos, estoque, margem, campanhas ou outros fatores externos**.
- Portanto, não é possível avaliar lucro ou margem, nem estabelecer relações de causa e efeito a partir dos resultados encontrados.
- O período analisado também não permite confirmar padrões sazonais recorrentes.

## Conclusão

A análise identificou um faturamento total de **$737.327,88** no período, com distribuição relativamente equilibrada entre as categorias. Os cinco produtos de maior faturamento concentraram aproximadamente **25% da receita**, enquanto clientes entre **56 e 65 anos** apresentaram o maior faturamento entre as faixas etárias analisadas.

Também foram identificadas cidades com faturamento acima da média, com destaque para **Port Melissaborough**. Esses resultados podem servir como ponto de partida para análises mais aprofundadas sobre produtos, perfil dos consumidores e desempenho geográfico.

## Estrutura do projeto

```text
online-retail-analysis/
│
├── README.md
├── sql/
│   └── Online_Retail.sql
├── excel/
│   └── Online_Retail_Dashboard.xlsx
├── docs/
│   └── Análise de vendas - Online_Retail.pdf
└── images/
    └── Dashboard.png
```

## Fonte dos dados

[Online Retail & E-Commerce — Kaggle](https://www.kaggle.com/datasets/ertugrulesol/online-retail-data)
