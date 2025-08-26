-- Exemplo de filtro por data (últimos 12 meses)
CREATE TABLE IF NOT EXISTS vendas_recentes AS
SELECT
    vl.id_venda,
    vl.id_cliente,
    vl.id_produto,
    vl.data_venda,
    vl.quantidade,
    vl.valor_total,
    cl.nome AS nome_cliente,
    cl.regiao,
    pl.nome_produto,
    pl.categoria,
    pl.preco
FROM
    vendas_limpas vl
JOIN
    clientes_limpos cl ON vl.id_cliente = cl.id_cliente
JOIN
    produtos_limpos pl ON vl.id_produto = pl.id_produto
WHERE
    vl.data_venda >= DATE('now', '-12 months');

-- Exemplo de filtro por categoria de produto e região
CREATE TABLE IF NOT EXISTS vendas_filtradas AS
SELECT
    *
FROM
    vendas_recentes
WHERE
    categoria = 'ELETRONICOS' AND regiao = 'SUDESTE';

-- Exemplo de filtro por valor numérico (vendas acima de 100)
CREATE TABLE IF NOT EXISTS vendas_alto_valor AS
SELECT
    *
FROM
    vendas_filtradas
WHERE
    valor_total > 100;