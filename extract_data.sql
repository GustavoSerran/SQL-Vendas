SELECT
    c.id_cliente,
    c.nome AS nome_cliente,
    c.email,
    c.regiao,
    p.id_produto,
    p.nome_produto,
    p.categoria,
    p.preco,
    v.id_venda,
    v.data_venda,
    v.quantidade,
    v.valor_total
FROM
    vendas v
JOIN
    clientes c ON v.id_cliente = c.id_cliente
JOIN
    produtos p ON v.id_produto = p.id_produto;