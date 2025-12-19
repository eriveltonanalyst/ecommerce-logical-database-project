INSERT INTO cliente (nome, email, telefone) VALUES
('João Silva', 'joao@email.com', '1111-1111'),
('Empresa X', 'contato@empresax.com', '2222-2222');

INSERT INTO cliente_pf VALUES (1, '12345678901');
INSERT INTO cliente_pj VALUES (2, '12345678000199', 'Empresa X LTDA');

INSERT INTO fornecedor (nome, contato) VALUES
('Fornecedor A', 'fornA@email.com'),
('Fornecedor B', 'fornB@email.com');

INSERT INTO produto (nome, preco, id_fornecedor) VALUES
('Notebook', 3500.00, 1),
('Mouse', 80.00, 2);

INSERT INTO estoque VALUES
(1, 10),
(2, 50);

INSERT INTO pedido (data_pedido, status, id_cliente) VALUES
('2024-01-10', 'Finalizado', 1),
('2024-01-15', 'Em andamento', 2);

INSERT INTO pagamento (tipo_pagamento) VALUES
('Cartão de Crédito'),
('PIX');

INSERT INTO pedido_pagamento VALUES
(1, 1, 3500.00),
(2, 2, 80.00);

INSERT INTO entrega (status_entrega, codigo_rastreio, id_pedido) VALUES
('Enviado', 'BR123456', 1),
('Processando', 'BR789101', 2);
