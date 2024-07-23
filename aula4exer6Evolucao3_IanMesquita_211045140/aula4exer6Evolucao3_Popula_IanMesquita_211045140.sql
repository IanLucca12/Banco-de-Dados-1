-- --------------------     << aula4exer6Evolucao3 >>     -----------------------
--
--                    SCRIPT DE CRIACAO (DML)
--
-- Data Criacao ...........: 30/09/2019
-- Autor(es) ..............: Ian Lucca Soares Mesquita
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer6Evolucao3
--
-- Data Ultima Alteracao ..: 06/05/2024
--   => Criação do mockup de dados
--   => Modiificação do projeto para se adequar as observações feitas em sala de aula
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- -----------------------------------------------------------------
USE aula4exer6Evolucao3;

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

-----------
-- POPULA 4
-----------

INSERT INTO PROPRIETARIO VALUES (
    987654321,
    'Joana Silva',
    'bolo de cenoura',
    'Taguatinga',
    'DF',
    '72045678',
    'F',
    '1995-07-15',
    30
);

INSERT INTO telefone VALUES(
    987654321,
    998765432
);

INSERT INTO VEICULO VALUES (
    'KLM7890',
    'EFG1234HI56789JK0',
    'prata',
    2021,
    987654321,
    2,
    1
);

INSERT INTO CATEGORIA VALUES (
	NULL,
    'Motocicleta'
);

INSERT INTO MODELO VALUES (
	NULL,
    'Honda CB 500'
);

INSERT INTO INFRACAO VALUES (
    '2024-05-10 08:15:00',
    45,
    21423,
    23,
    121241,
    'KLM7890'
);

INSERT INTO MULTA VALUES (
	21423,
	'Excesso de velocidade',
    '3345'
);

INSERT INTO LOCAL VALUES (
    101,
    103.554321,
    19.987654,
    NULL
);

INSERT INTO AGENTE VALUES (
	121241,
	'Maria Santos',
    '2008-12-17',
    11
);

-----------
-- POPULA 5
-----------
INSERT INTO PROPRIETARIO VALUES (
    123456789,
    'Carlos Oliveira',
    'pão de queijo',
    'Ceilândia',
    'DF',
    '73098765',
    'M',
    '1988-03-20',
    36
);

INSERT INTO telefone VALUES(
    123456789,
    999888777
);

INSERT INTO VEICULO VALUES (
    'XYZ4567',
    'LMN1234OP56789QR0',
    'vermelho',
    2018,
    123456789,
    1,
    2
);

INSERT INTO CATEGORIA VALUES (
	NULL,
    'Caminhão'
);

INSERT INTO MODELO VALUES (
	NULL,
    'Volvo FH'
);

INSERT INTO INFRACAO VALUES (
    '2024-05-11 15:45:00',
    32,
    21424,
    23,
    121242,
    'XYZ4567'
);

INSERT INTO MULTA VALUES (
	21424,
	'Estacionamento irregular',
    '7890'
);

INSERT INTO LOCAL VALUES (
    102,
    102.987654,
    20.123456,
    NULL
);

INSERT INTO AGENTE VALUES (
	121242,
	'José Silva',
    '2015-09-28',
    17
);

-----------
-- POPULA 6
-----------
INSERT INTO PROPRIETARIO VALUES (
    555666777,
    'Aline Souza',
    'torta de limão',
    'Guará',
    'DF',
    '71122334',
    'F',
    '1992-12-05',
    32
);

INSERT INTO telefone VALUES(
    555666777,
    997766554
);

INSERT INTO VEICULO VALUES (
    'ABC1234',
    'PQR5678ST90123UV4',
    'azul',
    2020,
    555666777,
    2,
    1
);

INSERT INTO CATEGORIA VALUES (
	NULL,
    'Van'
);

INSERT INTO MODELO VALUES (
	NULL,
    'Renault Master'
);

INSERT INTO INFRACAO VALUES (
    '2024-05-12 12:30:00',
    12,
    21425,
    23,
    121243,
    'ABC1234'
);

INSERT INTO MULTA VALUES (
	21425,
	'Avanço de sinal vermelho',
    '1234'
);

INSERT INTO LOCAL VALUES (
    103,
    101.345678,
    20.876543,
    NULL
);

INSERT INTO AGENTE VALUES (
	121243,
	'Ana Oliveira',
    '2019-06-10',
    19
);
