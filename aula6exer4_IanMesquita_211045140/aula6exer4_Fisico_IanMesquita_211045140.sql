-- -------- < aula6exer4 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 29/05/2024
-- Autor(es) ..............: Ian Lucca SOares Mesquita
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: FUI
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--        
-- 
-- Ultimas Alteracoes
-- 29/05/2024- Criação do diagrama físico
--
-- ---------------------------------------------------------
create database if not exists FUI;
use FUI;

CREATE TABLE PROJETO (
    id_Projeto INT(50) PRIMARY KEY,
    nome VARCHAR(50),
    num_Proj INT(50),
    local VARCHAR(50)
);

CREATE TABLE DEPENDENTE (
    nome VARCHAR(50),
    sexo CHAR(2),
    dt_Nascimento DATE,
    ligacao VARCHAR(50)
);

CREATE TABLE GERENTE_DEPARTAMENTO (
    dt_gerencia DATE,
    sexo CHAR(2),
    salario INT(50),
    dt_Nascimento DATE,
    matricula INT(50),
    rua VARCHAR(50),
    numero INT(50),
    bairro VARCHAR(50),
    idade_Derivado_ INT(50),
    nome VARCHAR(50),
    GERENTE_TIPO INT,
    FK_GERENTE_DEPARTAMENTO_matricula INT(50),
    id_departamento INT(50),
    numero_Dep INT(50),
    FK_local_Dep_local_Dep_PK VARCHAR(50),
    FK_PROJETO_id_Projeto INT(50),
    FK_GERENTE_DEPARTAMENTO_matricula_ INT(50),
    PRIMARY KEY (matricula, id_departamento)
);

CREATE TABLE local_Dep (
    local_Dep_PK VARCHAR(50) NOT NULL PRIMARY KEY,
    local_Dep VARCHAR(50)
);

CREATE TABLE trabalha (
    fk_GERENTE_DEPARTAMENTO_matricula INT(50),
    fk_PROJETO_id_Projeto INT(50)
);
 
ALTER TABLE GERENTE_DEPARTAMENTO ADD CONSTRAINT FK_GERENTE_DEPARTAMENTO_2
    FOREIGN KEY (FK_GERENTE_DEPARTAMENTO_matricula, FK_GERENTE_DEPARTAMENTO_matricula_)
    REFERENCES GERENTE_DEPARTAMENTO (matricula, matricula);
 
ALTER TABLE GERENTE_DEPARTAMENTO ADD CONSTRAINT FK_GERENTE_DEPARTAMENTO_3
    FOREIGN KEY (FK_local_Dep_local_Dep_PK)
    REFERENCES local_Dep (local_Dep_PK);
 
ALTER TABLE GERENTE_DEPARTAMENTO ADD CONSTRAINT FK_GERENTE_DEPARTAMENTO_4
    FOREIGN KEY (FK_PROJETO_id_Projeto)
    REFERENCES PROJETO (id_Projeto);
 
