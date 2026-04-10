# Análise de Gastos Públicos do Governo Federal

Este projeto tem como objetivo explorar a base de dados de execução orçamentária do governo federal brasileiro, disponibilizada pelo Portal da Transparência. A ideia surgiu da necessidade de entender melhor como os recursos públicos são distribuídos entre órgãos, regiões e finalidades, e de identificar padrões que normalmente ficam escondidos em planilhas brutas.

## O que está sendo analisado

A base cobre os lançamentos de despesa pública federal, com informações sobre quais órgãos gastaram, onde os recursos foram aplicados geograficamente, qual foi a finalidade do gasto e como se comportou a execução ao longo do tempo. A partir disso, o projeto busca responder perguntas como:

- Quais ministérios e órgãos concentram o maior volume de recursos?
- Quais estados e municípios recebem mais investimentos federais?
- Como os parlamentares direcionam recursos via emendas?
- Qual a diferença entre o que foi empenhado e o que foi efetivamente pago?
- Quais funções de governo apresentam melhor taxa de execução?

## Arquitetura do projeto

Os dados passam por um processo de ETL construído no Pentaho Data Integration (PDI), que organiza a base bruta em um modelo star schema armazenado no MySQL. Esse modelo foi escolhido por permitir consultas analíticas mais rápidas e um Power BI mais responsivo, sem depender de uma base flat com dezenas de colunas repetidas.

O modelo é composto por uma tabela fato central e sete dimensões:

| Tabela | Descrição |
|---|---|
| fato_execucao | Valores financeiros por lançamento (empenhado, liquidado, pago, restos a pagar) |
| dim_tempo | Ano, mês e trimestre do lançamento |
| dim_orgao | Órgão superior, subordinado e unidade gestora |
| dim_orcamento | Função, subfunção, programa orçamentário e ação |
| dim_geografica | UF e município de aplicação dos recursos |
| dim_despesa | Categoria econômica, grupo, elemento e modalidade da despesa |
| dim_emenda | Autor da emenda parlamentar |


## Estrutura do repositório

```
projeto_gastos_gov/
├── jobs/                      # Orquestração do ETL (arquivos .kjb)
├── transformations/
│   ├── dims/                  # Transformations de carga das dimensões (.ktr)
│   └── fato/                  # Transformation de carga da tabela fato (.ktr)
├── sql/                       # Scripts DDL de criação das tabelas no MySQL
├── input/                     # Arquivos CSV da fonte (não versionados)
├── output/                    # Exportações pontuais pós-ETL
├── dashboards/                # Arquivos Power BI (.pbix)
└── .gitignore
```

## Tecnologias utilizadas

- **Pentaho Data Integration (PDI)** — ETL e modelagem
- **MySQL** — armazenamento do data warehouse
- **Power BI** — visualização e dashboards
- **Git / GitHub** — versionamento do projeto

## Fonte dos dados

Os dados são extraídos do Portal da Transparência do Governo Federal, disponível em [portaldatransparencia.gov.br](https://portaldatransparencia.gov.br). A base contempla os lançamentos de despesa com detalhamento por órgão, localidade, classificação orçamentária e valores em todas as etapas da execução.

## Status

Projeto em desenvolvimento. O modelo de dados e o ETL estão sendo construídos. Os dashboards serão desenvolvidos na sequência.
