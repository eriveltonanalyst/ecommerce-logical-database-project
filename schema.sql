CREATE DATABASE ecommerce;
USE ecommerce;

-- CLIENTE
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE cliente_pf (
    id_cliente INT PRIMARY KEY,
    cpf CHAR(11) UNIQUE,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE cliente_pj (
    id_cliente INT PRIMARY KEY,
    cnpj CHAR(14) UNIQUE,
    razao_social VARCHAR(100),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- VENDEDOR
CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100)
);

-- FORNECEDOR
CREATE TABLE fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(100)
);

-- PRODUTO
CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

-- ESTOQUE
CREATE TABLE estoque (
    id_produto INT PRIMARY KEY,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- PEDIDO
CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    status VARCHAR(50),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- PAGAMENTO
CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pagamento VARCHAR(50)
);

CREATE TABLE pedido_pagamento (
    id_pedido INT,
    id_pagamento INT,
    valor DECIMAL(10,2),
    PRIMARY KEY (id_pedido, id_pagamento),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_pagamento) REFERENCES pagamento(id_pagamento)
);

-- ENTREGA
CREATE TABLE entrega (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    status_entrega VARCHAR(50),
    codigo_rastreio VARCHAR(50),
    id_pedido INT UNIQUE,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);
