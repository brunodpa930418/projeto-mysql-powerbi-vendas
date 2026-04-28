-- =========================================
-- 📊 PROJETO: SISTEMA DE VENDAS
-- Arquivo: inserts.sql
-- Descrição: Inserção de dados iniciais
-- para simulação do banco de vendas
-- =========================================


-- ==============================
-- 👤 TABELA: clientes
-- Dados dos clientes cadastrados
-- ==============================
INSERT INTO clientes (nome, cidade) VALUES
('Bruno Silva', 'Fortaleza'),
('Maria Souza', 'São Paulo'),
('João Lima', 'Recife'),
('Ana Costa', 'Salvador'),
('Pedro Alves', 'Curitiba');


-- ==============================
-- 🛒 TABELA: produtos
-- Produtos disponíveis para venda
-- ==============================
INSERT INTO produtos (nome, categoria, preco) VALUES
('Notebook Dell', 'Eletrônicos', 3500.00),
('Mouse Logitech', 'Periféricos', 120.00),
('Teclado Mecânico', 'Periféricos', 250.00),
('Monitor LG 24', 'Eletrônicos', 900.00),
('Cadeira Gamer', 'Móveis', 1100.00);


-- ==============================
-- 🧾 TABELA: vendas
-- Registros de vendas realizadas
-- Relacionadas aos clientes
-- ==============================
INSERT INTO vendas (id_cliente, data_venda) VALUES
(1, '2024-01-10'),
(2, '2024-01-11'),
(3, '2024-01-11'),
(4, '2024-01-12'),
(5, '2024-01-13');


-- ==============================
-- 📦 TABELA: itens_venda
-- Produtos dentro de cada venda
-- ==============================
INSERT INTO itens_venda (id_venda, id_produto, quantidade) VALUES
(1, 1, 1), -- Venda 1: Notebook
(1, 2, 2), -- Venda 1: Mouse
(2, 3, 1), -- Venda 2: Teclado
(3, 2, 1), -- Venda 3: Mouse
(3, 4, 1), -- Venda 3: Monitor
(4, 5, 1), -- Venda 4: Cadeira
(5, 1, 1), -- Venda 5: Notebook
(5, 4, 2); -- Venda 5: Monitores


-- =========================================
-- 🔗 OBSERVAÇÕES
-- - vendas.id_cliente referencia clientes
-- - itens_venda conecta vendas e produtos
-- - permite análises de faturamento e produtos mais vendidos
-- =========================================
