-- 1️⃣ Quantos pedidos foram feitos por cada cliente?
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
LEFT JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- 2️⃣ Valor total gasto por cliente (atributo derivado)
SELECT c.nome, SUM(pp.valor) AS valor_total_gasto
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
JOIN pedido_pagamento pp ON p.id_pedido = pp.id_pedido
GROUP BY c.nome
HAVING SUM(pp.valor) > 100;

-- 3️⃣ Relação de produtos, fornecedores e estoque
SELECT pr.nome AS produto, f.nome AS fornecedor, e.quantidade
FROM produto pr
JOIN fornecedor f ON pr.id_fornecedor = f.id_fornecedor
JOIN estoque e ON pr.id_produto = e.id_produto
ORDER BY e.quantidade DESC;

-- 4️⃣ Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.nome AS fornecedor, pr.nome AS produto
FROM fornecedor f
JOIN produto pr ON f.id_fornecedor = pr.id_fornecedor;

-- 5️⃣ Pedidos com status específico
SELECT *
FROM pedido
WHERE status = 'Finalizado';

-- 6️⃣ Pedidos com mais de uma forma de pagamento
SELECT id_pedido, COUNT(id_pagamento) AS qtd_pagamentos
FROM pedido_pagamento
GROUP BY id_pedido
HAVING COUNT(id_pagamento) > 1;
