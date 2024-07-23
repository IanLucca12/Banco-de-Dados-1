-- -------- < Ian Lucca Soares Mesquita > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 28/04/2024
-- Autor(es) ..............: Ian Lucca Soares Mesquita
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: bdclinica
--
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         
-- Ultimas Alteracoes
--   28/04/2024 => Criação do banco de dados.
--              
--   
-- ---------------------------------------------------------

 CREATE DATABASE bdClinica;
USE bdClinica;

CREATE TABLE MEDICO (
    numero VARCHAR(30) NOT NULL ,
    unidadeFederacao VARCHAR(2) NOT NULL,
    nomeCompleto VARCHAR(30) NOT NULL,
  	CONSTRAINT MEDICO PRIMARY KEY (crm)
	REFERENCES MEDICO (numero,unidadeFederacao),
);

CREATE TABLE PACIENTE (
    idPaciente INT NOT NULL PRIMARY KEY,
    nomeCompleto VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    rua VARCHAR(30) NOT NULL,
    logradouro VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    complemento VARCHAR(100),
    cidade VARCHAR(30) NOT NULL,
    unidadeFederacao VARCHAR(2) NOT NULL,
    ddi	 INT NOT NULL,
    ddd  INT(3) NOT NULL,
    telefone INT(9) NOT NULL,
);

CREATE TABLE CONSULTA_consulta (
    idConsulta INT NOT NULL PRIMARY KEY,
    data TIMESTAMP NOT NULL,
    crm VARCHAR(30) NOT NULL,
    idPaciente INT NOT NULL,

    CONSTRAINT consulta_MEDICO FOREIGN KEY (crm)
        REFERENCES MEDICO (numero,unidadeFederacao),
    CONSTRAINT consulta_PACIENTE FOREIGN KEY (idPaciente)
        REFERENCES PACIENTE (idPaciente)
);

CREATE TABLE RECEITA (
    idReceita INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    idConsulta INT NOT NULL,
    nomeMedicamento  VARCHAR(100) NOT NULL

    CONSTRAINT RECEITA_CONSULTA FOREIGN KEY (idConsulta)
        REFERENCES CONSULTA_consulta (idConsulta),
    CONTRAIN RECEITA_MEDICAMENTO FOREIGN KEY (nomeMedicamento)
	REFERENCES MEDICAMENTO_nomeMedicamento(nomeMedicamento)
);

CREATE TABLE 	MEDICAMENTO (
    idMedicamento INT NOT NULL PRIMARY KEY,
    nomeMedicamento VARCHAR(30),
);

CREATE TABLE ESPECIALIDADE (
    idEspecialidade INT NOT NULL PRIMARY KEY,
    Especialidade VARCHAR(30) NOT NULL,
);



CREATE TABLE prescreve (
    idReceita INT NOT NULL,
    idMedicamento INT NOT NULL,

    CONSTRAINT contem_RECEITA_FK FOREIGN KEY (idReceita)
        REFERENCES RECEITA (idReceita),
    CONSTRAINT contem_MEDICAMENTO_PK FOREIGN KEY (idMedicamento)
        REFERENCES MEDICAMENTO (idMedicamento)    
);

CREATE TABLE possui (
    crm VARCHAR(30) NOT NULL,
    idEspecialidade INT NOT NULL,

    CONSTRAINT possui_MEDICO FOREIGN KEY (crm)
        REFERENCES MEDICO (numero,unidadeFederacao),
    CONSTRAINT possui_ESPECIALIDADE FOREIGN KEY (idEspecialidade)
        REFERENCES ESPECIALIDADE (idEspecialidade)
);