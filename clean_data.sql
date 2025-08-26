-- Padronização e remoção de duplicidades
CREATE TABLE IF NOT EXISTS vendas_limpas AS
SELECT
    id_venda,
    id_cliente,
    id_produto,
    data_venda,
    quantidade,
    valor_total
FROM
    vendas
GROUP BY
    id_venda, id_cliente, id_produto, data_venda, quantidade, valor_total;

-- Tratamento de valores nulos e normalização (exemplo: preencher nulos com 'Desconhecido' ou 0)
UPDATE vendas_limpas
SET regiao = 'Desconhecido'
WHERE regiao IS NULL;

UPDATE vendas_limpas
SET preco = 0
WHERE preco IS NULL;

-- Criação de tabelas auxiliares limpas (exemplo: clientes_limpos, produtos_limpos)
CREATE TABLE IF NOT EXISTS clientes_limpos AS
SELECT
    id_cliente,
    TRIM(nome) AS nome,
    LOWER(email) AS email,
    UPPER(regiao) AS regiao
FROM
    clientes
GROUP BY
    id_cliente, nome, email, regiao;

CREATE TABLE IF NOT EXISTS produtos_limpos AS
SELECT
    id_produto,
    TRIM(nome_produto) AS nome_produto,
    UPPER(categoria) AS categoria,
    preco
FROM
    produtos
GROUP BY
    id_produto, nome_produto, categoria, preco;