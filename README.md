# E-commerce – Projeto Lógico de Banco de Dados

## 📌 Descrição do Projeto
Este projeto apresenta a **modelagem lógica de um banco de dados relacional para um sistema de e-commerce**, aplicando o mapeamento do modelo conceitual refinado para o modelo lógico, incluindo a criação do **script SQL**, inserção de dados para testes e execução de **consultas SQL avançadas**.

O projeto foi desenvolvido como parte de um desafio da plataforma DIO, com foco em boas práticas de modelagem, uso correto de chaves primárias e estrangeiras, constraints e consultas analíticas.

---

## 🎯 Objetivo
- Implementar o modelo lógico de um e-commerce
- Aplicar refinamentos do modelo conceitual
- Criar o schema SQL
- Inserir dados para testes
- Desenvolver queries SQL com diferentes cláusulas
- Responder perguntas de negócio através das consultas

---

## 🧠 Regras de Negócio Aplicadas

### Cliente PF e PJ
- Um cliente pode ser Pessoa Física (PF) ou Pessoa Jurídica (PJ), mas nunca ambos
- Implementado via tabelas especializadas

### Pagamento
- Um cliente pode cadastrar mais de uma forma de pagamento
- Um pedido pode possuir uma ou mais formas de pagamento

### Entrega
- Cada pedido possui uma entrega
- A entrega possui status e código de rastreio

---

## 🗂️ Modelo Lógico – Principais Entidades
- Cliente
- Cliente_PF
- Cliente_PJ
- Pedido
- Produto
- Fornecedor
- Estoque
- Pagamento
- Pedido_Pagamento
- Entrega
- Vendedor

---

## ❓ Perguntas de Negócio Respondidas pelas Queries
- Quantos pedidos foram feitos por cada cliente?
- Algum vendedor também é fornecedor?
- Qual a relação de produtos, fornecedores e estoques?
- Qual a relação entre nomes de fornecedores e nomes de produtos?
- Qual o valor total gasto por cliente?
- Quais pedidos possuem mais de uma forma de pagamento?

---

## 🛠️ Tecnologias e Conceitos
- SQL
- Modelagem Lógica
- Constraints
- Chaves Primárias e Estrangeiras
- Joins
- Funções de agregação
- Queries analíticas
