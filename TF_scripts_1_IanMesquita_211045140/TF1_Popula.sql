-- -------- <Trabalho Final Tema 1 > --------
--
--                    SCRIPT DE INSERÇÃO (DML)
--
-- Data Criacao ...........: 01/06/2024
-- Autor(es) ..............: Ian Lucca Soares Mesquita
--                           Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: tf1
--
-- PROJETO => 01 Base de Dados
--         => 12 Tabelas
--        
-- 
-- Ultimas Alteracoes
-- 01/06/2024- Criação do script de inserção
-- ---------------------------------------------------------

USE tf1;

-- Inserir tuplas na tabela MARCA
INSERT INTO MARCA (nome, comissao) VALUES 
('Avon', 5.00),
('Botcário', 6.50),
('Natura', 4.75),
('Jequiti', 7.20),
('MAC', 5.50);

-- Inserir tuplas na tabela CICLO
INSERT INTO CICLO (marca, numero, dataInicio, dataFim) VALUES 
(1, 1, '2024-01-01', '2024-01-31'),
(2, 1, '2024-02-01', '2024-02-28'),
(3, 1, '2024-03-01', '2024-03-31'),
(4, 1, '2024-04-01', '2024-04-30'),
(5, 1, '2024-05-01', '2024-05-31');

-- Inserir tuplas na tabela PRODUTO
INSERT INTO PRODUTO (nome, pontos, categoria, idMarca) VALUES 
('Feira Da Lua', 10, 'Hidratante', 1),
('Naturex', 20, 'Sabonete', 2),
('Lunare', 15, 'Body Splash', 3),
('Dinheiro', 25, 'Perfume', 4),
('Fantasy', 30, 'Base', 5);

-- Inserir tuplas na tabela ESTOQUE
INSERT INTO ESTOQUE (quantidade, validade, valorCompra, dataCompra) VALUES 
(100, '2025-01-01', 10.00, '2024-01-01'),
(200, '2025-02-01', 20.00, '2024-02-01'),
(150, '2025-03-01', 15.00, '2024-03-01'),
(250, '2025-04-01', 25.00, '2024-04-01'),
(300, '2025-05-01', 30.00, '2024-05-01');

-- Inserir tuplas na tabela CLIENTE
INSERT INTO CLIENTE (nome, rua, numero, bairro, complemento) VALUES 
('Joana Almeida', 'Rua 15', 10, 'Bairro Cuzcuzeira', 'Bar Do Zé'),
('Luz Maria', 'Rua 21', 20, 'Bairro São Jorje', 'casa 234'),
('Jânio Quadros', 'Rua 3', 30, 'Bairro Esperança', 'apto 3'),
('Caroline Dickman', 'Rua 23', 40, 'Bairro da Gama', 'casa 11'),
('Valeria Santos', 'Rua 51', 50, 'Bairro Perpétuo Socorro', 'apto 1608');

-- Inserir tuplas na tabela FORMA_PAGAMENTO
INSERT INTO FORMA_PAGAMENTO (nomeForma, taxa, numParcelas) VALUES 
('Cartão de Crédito', 10.00, 12),
('Boleto', 0.00, 1),
('PIX', 0.00, 1),
('Cartão de Débito', 1.00, 1),
('Dinheiro', 0.00, 1);

-- Inserir tuplas na tabela VENDA
INSERT INTO VENDA (valorVenda, dataVenda, idCliente, idForma, idCiclo) VALUES 
(100.00, '2024-06-01', 1, 1, 1),
(200.00, '2024-06-02', 2, 2, 2),
(150.00, '2024-06-03', 3, 3, 3),
(250.00, '2024-06-04', 4, 4, 4),
(300.00, '2024-06-05', 5, 5, 5);

-- Inserir tuplas na tabela vende
INSERT INTO vende (idVenda, codigoProduto) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserir tuplas na tabela contem
INSERT INTO contem (idItem, codigoProduto) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserir tuplas na tabela telefone
INSERT INTO telefone (cliente, ddi, ddd, numero) VALUES 
(1, 55, 61, 123456789),
(2, 55, 21, 234567890),
(3, 55, 73, 345678901),
(4, 55, 41, 456789012),
(5, 55, 91, 567890123);

-- Inserir tuplas na tabela quantidade
INSERT INTO quantidade (idVenda, quantidade) VALUES 
(1, 10),
(2, 20),
(3, 15),
(4, 25),
(5, 30);

-- Inserir tuplas na tabela produtos
INSERT INTO produtos (idVenda, produto) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
