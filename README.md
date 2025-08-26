# SQL-Vendas
Fluxograma e trabalho de extração com SQL
Projeto de Análise de Dados com SQL e Python

# Este projeto implementa um pipeline completo de análise de dados estruturado em 3 etapas sequenciais: extração, limpeza e filtro

# Estrutura do Projeto

1. Extração de Dados (SQL)

Arquivo: sql/schema.sql - Define o esquema do banco de dados

Arquivo: sql/extract_data.sql - Consultas para coleta de dados brutos

Descrição: Conexão ao banco de dados relacional e definição das principais tabelas (clientes, produtos, vendas)

2. Limpeza de Dados (SQL)

Arquivo: sql/clean_data.sql

Funcionalidades:
Padronização dos dados
Remoção de duplicidades
Tratamento de valores nulos
Normalização de campos
Criação de tabelas auxiliares limpas

3. Filtro de Dados (SQL)

Arquivo: sql/filter_data.sql

Filtros implementados:
Filtro por data (últimos 12 meses)
Filtro por categoria de produto
Filtro por região
Filtro por valores numéricos (vendas acima de R$ 100)



