-- -------- <Trabalho Final Tema 1 > --------
--
--                    SCRIPT DE CONTROLE (DDL, DCL)
--
-- Data Criacao ...........: 15/06/2024
-- Autor(es) ..............: Ian Lucca Soares Mesquita
--                           Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1D2_ianlucca
--
-- PROJETO => 01 Base de Dados
--         => 12 Tabelas
--         => 03 Usuários
--        
-- 
-- Ultimas Alteracoes
--
-- ---------------------------------------------------------

USE TF_1D2_ianlucca;

-- Criação de Perfis
CREATE ROLE administrador;
CREATE ROLE vendedor;

-- Criação de Usuários
CREATE USER senhora IDENTIFIED BY 'senhora123';
CREATE USER assistente1 IDENTIFIED BY 'vende123';
CREATE USER assistente2 IDENTIFIED BY 'vende321';

-- Atribuição de Perfis aos Usuários
GRANT administrador TO senhora;
GRANT vendedor TO assistente1;
GRANT vendedor TO assistente2;

-- Atribuição de Permissões ao Perfil Administrador
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO administrador;

-- Atribuição de Permissões ao Perfil Vendedor
GRANT SELECT ON ALL TABLES IN SCHEMA public TO vendedor;
GRANT INSERT ON TABLE VENDA TO vendedor;
GRANT UPDATE ON TABLE VENDA TO vendedor;

