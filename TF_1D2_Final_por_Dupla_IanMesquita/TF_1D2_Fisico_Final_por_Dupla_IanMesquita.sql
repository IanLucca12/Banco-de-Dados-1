-- -------- <Trabalho Final Tema 1 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
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
-- 31/05/2024- Criação do script físico
-- 01/06/2024- Adição do cabeçalho e revisão do script
-- 15/06/2024- Adiciona atributo FK que identifica forma de pagamento na tabela ESTOQUE
-- 28/06/2024- Adiciona valores para a MARCA e reformulação da entidade CICLO
-- 14/07/2024- Reestruuação da base de dados para entrada de produtos que não sejam cosméticos
-- ---------------------------------------------------------


CREATE DATABASE IF NOT EXISTS TF_1D2_ianlucca;
USE TF_1D2_ianlucca;

CREATE TABLE MARCA (
    idMarca INT (100) AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    comissao DECIMAL(5,2) NOT NULL,

    CONSTRAINT MARCA_PK PRIMARY KEY (idMarca)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CICLO (
    idCiclo INT (100) AUTO_INCREMENT,
    marca INT (100) NOT NULL,
    numero INT (100) NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,

    CONSTRAINT CICLO_PK PRIMARY KEY (idCiclo),
    CONSTRAINT CICLO_MARCA_FK FOREIGN KEY (marca) REFERENCES MARCA(idMarca)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    codigoProduto INT (100) AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    pontos INT(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    idMarca INT NOT NULL,

    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoProduto),
    CONSTRAINT PRODUTO_MARCA_FK FOREIGN KEY (idMarca) REFERENCES MARCA(idMarca)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CLIENTE (
    idCliente INT(100) AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    rua VARCHAR(100),
    numero INT (100) ,
    bairro VARCHAR(100),
    complemento VARCHAR(100),

    CONSTRAINT CLIENTE_PK PRIMARY KEY (idCliente)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FORMA_PAGAMENTO (
    idForma INT (100) AUTO_INCREMENT,
    nomeForma VARCHAR(100) NOT NULL,
    taxa DECIMAL(5,2) ,
    numParcelas INT (100) ,

    CONSTRAINT FORMA_PAGAMENTO_PK PRIMARY KEY (idForma)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESTOQUE (
    idItem INT (100) AUTO_INCREMENT,
    quantidade INT (100) NOT NULL,
    validade DATE NOT NULL,
    valorCompra DECIMAL(10,2) NOT NULL,
    dataCompra DATE NOT NULL,
    idForma INT (100) NOT NULL,

    CONSTRAINT ESTOQUE_PK PRIMARY KEY (idItem),
    CONSTRAINT ESTOQUE_FORMA_PAGAMENTO_FK FOREIGN KEY (idForma) REFERENCES FORMA_PAGAMENTO(idForma)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VENDA (
    idVenda INT (100) AUTO_INCREMENT,
    valorVenda DECIMAL(10,2) NOT NULL,
    dataVenda DATE NOT NULL,
    idCliente INT(100) NOT NULL,
    idForma INT(100) NOT NULL,

    idCiclo INT(100) NOT NULL,

    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_CLIENTE_FK FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente),
    CONSTRAINT VENDA_FORMA_PAGAMENTO_FK FOREIGN KEY (idForma) REFERENCES FORMA_PAGAMENTO(idForma),
    CONSTRAINT VENDA_CICLO_FK FOREIGN KEY (idCiclo) REFERENCES CICLO(idCiclo)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE vende (
    idVenda INT(100) NOT NULL,
    codigoProduto INT(100) NOT NULL,
    dt_venda DATE NOT NULL,


    CONSTRAINT vende_VENDA_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda),
    CONSTRAINT vende_PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = InnoDB;

CREATE TABLE contem (
    idItem INT(100) NOT NULL,
    codigoProduto INT(100) NOT NULL,
    CONSTRAINT contem_ESTOQUE_FK FOREIGN KEY (idItem) REFERENCES ESTOQUE(idItem),
    CONSTRAINT contem_PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = InnoDB;

CREATE TABLE telefone (
    cliente INT(100) NOT NULL,
    ddi INT(3) NOT NULL,
    ddd INT(3) NOT NULL,
    numero INT(9) NOT NULL,

    CONSTRAINT telefone_FK FOREIGN KEY (cliente) REFERENCES CLIENTE(idCliente)
)Engine = InnoDB;

CREATE TABLE quantidade (
    idVenda INT(100) NOT NULL,
    quantidade INT(100) NOT NULL,

    CONSTRAINT quantidade_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda)
)Engine = InnoDB;

CREATE TABLE produtos (
    idVenda INT(100) NOT NULL,
    produto INT(100) NOT NULL,

    CONSTRAINT produtos_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda),
    CONSTRAINT _FK FOREIGN KEY (produto) REFERENCES PRODUTO(codigoProduto)
)Engine = InnoDB;