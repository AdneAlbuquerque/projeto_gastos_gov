# 💰 ETL & Análise de Gastos Públicos do Governo Federal

Projeto de portfólio completo com **pipeline ETL**, **banco de dados** e **dashboards interativos** para análise de gastos públicos do governo federal brasileiro.

---

## 📌 Objetivo

Construir uma solução de dados de ponta a ponta que:
1. **Extrai** dados de gastos públicos do [Portal da Transparência](https://portaldatransparencia.gov.br/)
2. **Limpa e padroniza** os dados com Pentaho PDI
3. **Carrega** os dados tratados em um banco de dados relacional
4. **Analisa e visualiza** os gastos através de dashboards interativos no Power BI

---

## 🛠️ Tecnologias Utilizadas

| Ferramenta | Função |
|---|---|
| Pentaho PDI (Kettle) | Pipeline ETL |
| Portal da Transparência | Fonte dos dados |
| PostgreSQL / MySQL | Banco de dados de destino |
| Power BI | Dashboards e análises |
| Git | Versionamento do projeto |

---

## 📁 Estrutura do Projeto

```
projeto_gastos_gov/
├── transformations/       # Arquivos .ktr (transformações de dados)
├── jobs/                  # Arquivos .kjb (orquestração do fluxo)
├── input/                 # Arquivos de entrada (CSV do Portal da Transparência)
├── output/                # Arquivos gerados após o processamento
├── dashboards/            # Arquivo .pbix e prints do Power BI
├── docs/                  # Prints e documentação do Pentaho PDI
└── README.md              # Este arquivo
```

---

## 🔄 Arquitetura da Solução

```
Portal da Transparência
        │
        ▼
  [ Extração ]
  Download CSV mensal
        │
        ▼
  [ Limpeza e Padronização — Pentaho PDI ]
  - Remoção de registros duplicados
  - Padronização de datas (dd/MM/yyyy → yyyy-MM-dd)
  - Padronização de valores monetários
  - Tratamento de campos nulos
  - Normalização de nomes de órgãos
        │
        ▼
  [ Banco de Dados — PostgreSQL/MySQL ]
  Tabelas estruturadas e prontas para análise
        │
        ▼
  [ Dashboards — Power BI ]
  Visualizações e insights sobre os gastos
```

---

## 📊 Dashboards

Os dashboards foram desenvolvidos no **Power BI** conectado diretamente ao banco de dados, permitindo análises como:

- 📈 Evolução dos gastos por período
- 🏛️ Gastos por órgão e ministério
- 🗂️ Distribuição por categoria de despesa
- 🌎 Gastos por região e estado
- 🔍 Maiores fornecedores e beneficiários

> Prints e o arquivo `.pbix` estão disponíveis na pasta `dashboards/`

---

## 📥 Fonte dos Dados

- **Portal da Transparência:** https://portaldatransparencia.gov.br/download-de-dados
- Dados disponíveis: Despesas, Transferências, Bolsa Família, Servidores, etc.
- Formato: CSV (separado por `;`)
- Atualização: mensal

---

## ▶️ Como Executar

### Pré-requisitos
- Pentaho PDI 9.x instalado
- Java 11+
- PostgreSQL ou MySQL configurado
- Power BI Desktop instalado

### Passos

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/projeto_gastos_gov.git
```

2. Abra o Pentaho Spoon e conecte ao repositório local (File Repository)

3. Coloque o arquivo CSV na pasta `input/`

4. Execute o Job principal em `jobs/`

5. Abra o arquivo `.pbix` na pasta `dashboards/` no Power BI Desktop

6. Atualize a conexão com o seu banco de dados local

---

## 📸 Evidências

> _Prints das transformações, jobs e dashboards serão adicionados nas pastas `docs/` e `dashboards/`_

---

## 👤 Autor

**Adne Ronaldo**  
[LinkedIn](#) • [GitHub](#)

---

## 📄 Licença

Este projeto é de uso educacional e está sob a licença MIT.
