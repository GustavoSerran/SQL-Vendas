CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    regiao VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(255),
    categoria VARCHAR(100),
    preco DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS vendas (
    id_venda INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);