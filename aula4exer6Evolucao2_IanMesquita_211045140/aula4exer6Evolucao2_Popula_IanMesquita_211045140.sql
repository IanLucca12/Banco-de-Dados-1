-- --------------------     << aula4exer6Evolucao2 >>     -----------------------
--
--                    SCRIPT DE CRIACAO (DML)
--
-- Data Criacao ...........: 30/09/2019
-- Autor(es) ..............: Ian Lucca SOares Mesquita
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer6Evolucao2
--
-- Data Ultima Alteracao ..: 06/05/2024
--   => Criação do mockup de dados
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -----------------------------------------------------------------
USE aula4exer6Evolucao2;

-- --------
-- POPULA 1
-- --------

INSERT INTO PROPRIETARIO VALUES (
    724305689,
    'Silvano Farias',
    'rocombole',
    'águas clara',
    'DF',
    '71045856',
    'M',
    '2003-10-24',
    20
    
);

INSERT INTO telefone VALUES(
    724305689,
    995677543
);

INSERT INTO VEICULO VALUES (
    'PCS3355',
    'D45782TR968123CD8',
    'preto',
    2019,
    16519655409,
    1,
    2
);

INSERT INTO CATEGORIA VALUES (
	NULL,
    'Carro'
);

INSERT INTO MODELO VALUES (
	NULL,
    'Fiat Uno'
);
INSERT INTO INFRACAO VALUE (
    '2024-04-19 00:34:19',
    23,
    21422,
    23,
    121240,
    'PCS3355'
    
);
INSERT INTO MULTA VALUES (
	21422,
	'Atropelamento e fuga',
    '5090'
);

INSERT INTO LOCAL VALUES (
    100,
    102.139342,
    20.122841,
	NULL
);

INSERT INTO AGENTE VALUES (
	121240,
	' Marcelo Gomez',
    '2010-05-29'
    13
);

-- --------
-- POPULA 2
-- --------

INSERT INTO PROPRIETARIO VALUES (
    724305678,
    'Mylena Angélica Silva Farias',
    'pitangueiras',
    'vicente pires',
    'DF',
    '71945876',
    'F',
    '1998-10-24',
    17
    
);

INSERT INTO telefone VALUES(
    724305678,
    995678324
);

INSERT INTO VEICULO VALUES (
    'PCS3426',
    'D45782TR968213AB9',
    'verde',
    2019,
    16519265432,
    2,
    2
);

INSERT INTO CATEGORIA VALUES (
	NULL,
    'Moto'
);

INSERT INTO MODELO VALUES (
	NULL,
    'Celestyal wings'
);
INSERT INTO INFRACAO VALUE (
    '2024-04-23 23:59:27',
    24,
    23423,
    21,
    121232,
    'PCS3426'
    
);
INSERT INTO MULTA VALUES (
	23423,
	'Pulou sinal vermelho',
    '590'
);

INSERT INTO LOCAL VALUES (
    100,
    102.139232,
    20.122479,
	NULL
);

INSERT INTO AGENTE VALUES (
	121232,
	' Estevão Solene',
    '2002-05-29'
);

-- --------
-- POPULA 3
-- --------

INSERT INTO PROPRIETARIO VALUES (
    724305679,
    'Angelo Silva Farias',
    'cuzcuzeira',
    'águas clara',
    'DF',
    '71945856',
    'M',
    '2000-10-24',
    24
    
);

INSERT INTO telefone VALUES(
    724305679,
    995678345
);

INSERT INTO VEICULO VALUES (
    'PCS3345',
    'D45782TR968213CD8',
    'azul',
    2021,
    16519265409,
    1,
    2
);

INSERT INTO CATEGORIA VALUES (
	NULL,
    'Carro'
);

INSERT INTO MODELO VALUES (
	NULL,
    'Honda Civic'
);
INSERT INTO INFRACAO VALUE (
    '2024-04-4 00:34:19',
    25,
    23422,
    22,
    121242,
    'PCS3345'
    
);
INSERT INTO MULTA VALUES (
	23422,
	'Velociade acima da permitida na via',
    '290'
);

INSERT INTO LOCAL VALUES (
    100,
    102.139242,
    20.122480,
	NULL
);

INSERT INTO AGENTE VALUES (
	121242,
	' Solange Praga',
    '2002-05-29'
    22
);

