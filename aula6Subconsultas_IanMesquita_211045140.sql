-- -------- < Aula 6 Subconsultas> --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 23/06/2024
-- Autor(es) ..............: Ian Lucca Soares Mesquita
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer6Evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- Ultimas Alteracoes
--
-- ---------------------------------------------------------
use aula4exer6Evolucao3;

-- 1) Instrução SQL que realiza uma operação de INSERÇÃO através de uma CONSULTA (SELECT) integrada na instrução INSERT;

-- Inserindo números de telefone padrão (99999999999) para proprietários que não têm telefone cadastrado
-- Tabelas envolvidas: PROPRIETARIO, TELEFONE

/*
  Esquema da tabela PROPRIETARIO:
  PROPRIETARIO (
    cpfProprietario DECIMAL(11),
    nomeProprietario VARCHAR(60),
    sexo ENUM('M','F'),
    dataNascimento DATE,
    logradouro VARCHAR(20),
    numero DECIMAL(5),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    estado CHAR(2),
    complemento VARCHAR(20)
  )

  Esquema da tabela TELEFONE:
  TELEFONE (
    telefone DECIMAL(15),
    cpfProprietario DECIMAL(11)
  )
*/

INSERT INTO TELEFONE (telefone, cpfProprietario)
SELECT 99999999999, cpfProprietario
FROM PROPRIETARIO
WHERE cpfProprietario NOT IN (SELECT cpfProprietario FROM TELEFONE);

-- 2) Instrução SQL que realiza uma operação de ALTERAÇÃO envolvendo uma CONSULTA (SELECT) integrada na instrução UPDATE;

-- Atualizando a cidade dos proprietários de "Samambaia Norte" para "Nova Cidade"
-- Tabelas envolvidas: PROPRIETARIO

/*
  Esquema da tabela PROPRIETARIO:
  PROPRIETARIO (
    cpfProprietario DECIMAL(11),
    nomeProprietario VARCHAR(60),
    sexo ENUM('M','F'),
    dataNascimento DATE,
    logradouro VARCHAR(20),
    numero DECIMAL(5),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    estado CHAR(2),
    complemento VARCHAR(20)
  )
*/

UPDATE PROPRIETARIO
SET cidade = 'Nova Cidade'
WHERE cidade = 'Samambaia Norte'
  AND cpfProprietario IN (SELECT cpfProprietario FROM PROPRIETARIO WHERE cidade = 'Samambaia Norte');

-- 3) Instrução SQL que realiza uma operação de EXCLUSÃO envolvendo uma CONSULTA (SELECT) integrada na instrução DELETE;

-- Excluindo todos os veículos de um proprietário específico, cujo CPF é '12345678910'
-- Tabelas envolvidas: VEICULO, PROPRIETARIO

/*
  Esquema da tabela VEICULO:
  VEICULO (
    placa CHAR(7),
    chassi CHAR(17),
    corPredominante VARCHAR(15),
    codModelo INT(6),
    codCategoria INT(2),
    anoDeFabricacao DECIMAL(4),
    cpfProprietario DECIMAL(11)
  )

  Esquema da tabela PROPRIETARIO:
  PROPRIETARIO (
    cpfProprietario DECIMAL(11),
    nomeProprietario VARCHAR(60),
    sexo ENUM('M','F'),
    dataNascimento DATE,
    logradouro VARCHAR(20),
    numero DECIMAL(5),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    estado CHAR(2),
    complemento VARCHAR(20)
  )
*/

DELETE FROM VEICULO
WHERE cpfProprietario = (SELECT cpfProprietario FROM PROPRIETARIO WHERE cpfProprietario = '12345678910');

-- 4) Instrução SQL que realiza uma CONSULTA (SELECT) possuindo uma SUBCONSULTA (outro SELECT) integrada na instrução SELECT;

-- Selecionando detalhes das infrações com descrições de tipos de infração e valores de multa
-- Tabelas envolvidas: INFRACAO, TIPOINFRACAO

/*
  Esquema da tabela INFRACAO:
  INFRACAO (
    placa CHAR(7),
    dataHora DATETIME,
    codInfracao INT(4),
    codLocal INT(6),
    matriculaAgente INT(10),
    velocidadeAferida DECIMAL(3)
  )

  Esquema da tabela TIPOINFRACAO:
  TIPOINFRACAO (
    codInfracao INT(4),
    descricaoInfracao VARCHAR(100),
    valorMulta DECIMAL(8,2)
  )
*/

SELECT i.placa, i.dataHora, i.velocidadeAferida, 
      (SELECT t.descricaoInfracao FROM TIPOINFRACAO t WHERE t.codInfracao = i.codInfracao) AS descricaoInfracao,
      (SELECT t.valorMulta FROM TIPOINFRACAO t WHERE t.codInfracao = i.codInfracao) AS valorMulta
FROM INFRACAO i;
