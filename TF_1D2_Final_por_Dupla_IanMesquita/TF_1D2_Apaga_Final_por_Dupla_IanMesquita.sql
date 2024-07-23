-- -------- <Trabalho Final Tema 1 > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
--
-- Data Criacao ...........: 31/05/2024
-- Autor(es) ..............: Ian Lucca Soares Mesquita
--                           Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1D2_ianlucca
--
-- PROJETO => 01 Base de Dados
--         => 12 Tabelas
--        
-- 
-- Ultimas Alteracoes
-- 31/05/2024- Criação do script de deleção
-- 01/06/2024- Adição do cabeçalho e revisão do script
-- 15/06/2024- Altera ordem em que a tabela ESTOQUE era apagada
-- 28/06/2024- Remove valores para MARCA e CICLO
-- 14/07/2024- Reestruuação da base de dados para deleção de produtos que não sejam cosméticos
-- ---------------------------------------------------------

USE TF_1D2_ianlucca;

DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS quantidade;
DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS contem;
DROP TABLE IF EXISTS vende;
DROP TABLE IF EXISTS VENDA;
DROP TABLE IF EXISTS ESTOQUE;
DROP TABLE IF EXISTS FORMA_PAGAMENTO;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS CICLO;
DROP TABLE IF EXISTS MARCA;
