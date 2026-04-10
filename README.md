# 💰 ETL - Gastos Públicos do Governo Federal

Projeto de portfólio desenvolvido com **Pentaho Data Integration (PDI)** para extração, limpeza, padronização e carga de dados de gastos públicos do governo federal brasileiro.

---

## 📌 Objetivo

Construir um pipeline ETL que:
1. **Extrai** dados de gastos públicos do [Portal da Transparência](https://portaldatransparencia.gov.br/)
2. **Limpa e padroniza** os dados (remoção de duplicatas, formatação de datas, valores e campos de texto)
3. **Carrega** os dados tratados em um banco de dados relacional para análise

---

## 🛠️ Tecnologias Utilizadas

| Ferramenta | Função |
|---|---|
| Pentaho PDI (Kettle) | Ferramenta ETL principal |
| Portal da Transparência | Fonte dos dados |
| PostgreSQL / MySQL | Banco de dados de destino |
| Git | Versionamento do projeto |

---

## 📁 Estrutura do Projeto

```
projeto_gastos_gov/
├── transformations/       # Arquivos .ktr (transformações de dados)
├── jobs/                  # Arquivos .kjb (orquestração do fluxo)
├── input/                 # Arquivos de entrada (CSV baixados do portal)
├── output/                # Arquivos gerados após o processamento
├── docs/                  # Prints e documentação visual do projeto
└── README.md              # Este arquivo
```

---

## 🔄 Fluxo do ETL

```
Portal da Transparência
        │
        ▼
  [ CSV Download ]
        │
        ▼
  [ Limpeza e Padronização ]
  - Remoção de registros duplicados
  - Padronização de datas (dd/MM/yyyy → yyyy-MM-dd)
  - Padronização de valores monetários
  - Tratamento de campos nulos
  - Normalização de nomes de órgãos
        │
        ▼
  [ Carga no Banco de Dados ]
  - Inserção na tabela de destino
  - Log de registros processados
```

---

## 📊 Fonte dos Dados

- **Portal da Transparência:** https://portaldatransparencia.gov.br/download-de-dados
- Dados disponíveis: Despesas, Transferências, Bolsa Família, Servidores, etc.
- Formato: CSV (separado por `;`)
- Atualização: mensal

---

## ▶️ Como Executar

### Pré-requisitos
- Pentaho PDI 9.x instalado
- Java 11+
- Banco de dados configurado (PostgreSQL ou MySQL)

### Passos

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/projeto_gastos_gov.git
```

2. Abra o Pentaho Spoon e conecte ao repositório local (File Repository)

3. Coloque o arquivo CSV na pasta `input/`

4. Abra e execute o Job principal em `jobs/`

5. Verifique os dados carregados no banco de dados

---

## 📸 Evidências

> _Prints das transformações e jobs serão adicionados na pasta `docs/`_

---

## 👤 Autor

**Adne Ronaldo**  
[LinkedIn](#) • [GitHub](#)

---

## 📄 Licença

Este projeto é de uso educacional e está sob a licença MIT.
