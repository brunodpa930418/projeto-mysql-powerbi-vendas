-- =========================================
-- 📊 PROJETO: SISTEMA DE VENDAS
-- Autor: Bruno de Paula
-- Descrição: Estrutura de banco de dados relacional
-- para simulação de vendas com clientes, produtos e pedidos.
-- =========================================


-- ==============================
-- 👤 TABELA: clientes
-- Armazena informações dos clientes
-- ==============================
CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do cliente
  nome VARCHAR(100),                         -- Nome do cliente
  cidade VARCHAR(100)                        -- Cidade onde o cliente mora
);


-- ==============================
-- 🛒 TABELA: produtos
-- Armazena os produtos disponíveis para venda
-- ==============================
CREATE TABLE produtos (
  id_produto INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do produto
  nome VARCHAR(100),                         -- Nome do produto
  categoria VARCHAR(50),                     -- Categoria do produto (ex: eletrônicos, roupas)
  preco DECIMAL(10,2)                        -- Preço do produto (com casas decimais)
);


-- ==============================
-- 🧾 TABELA: vendas
-- Registra as vendas feitas pelos clientes
-- ==============================
CREATE TABLE vendas (
  id_venda INT PRIMARY KEY AUTO_INCREMENT, -- Identificador da venda
  id_cliente INT,                          -- Cliente que realizou a compra
  data_venda DATE,                         -- Data da venda

  -- Relacionamento com clientes
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


-- ==============================
-- 📦 TABELA: itens_venda
-- Detalha os produtos dentro de cada venda
-- ==============================
CREATE TABLE itens_venda (
  id_item INT PRIMARY KEY AUTO_INCREMENT, -- Identificador do item da venda
  id_venda INT,                          -- Venda relacionada
  id_produto INT,                        -- Produto vendido
  quantidade INT,                        -- Quantidade comprada

  -- Relacionamentos
  FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);


-- =========================================
-- 🔗 RELACIONAMENTOS DO BANCO
-- clientes (1) → (N) vendas
-- vendas (1) → (N) itens_venda
-- produtos (1) → (N) itens_venda
-- =========================================
