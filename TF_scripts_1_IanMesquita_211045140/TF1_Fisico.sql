-- -------- <Trabalho Final Tema 1 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 31/05/2024
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
-- 31/05/2024- Criação do script físico
-- 01/06/2024- Adição do cabeçalho e revisão do script
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS tf1;
USE tf1;

CREATE TABLE MARCA (
    idMarca INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    comissao DECIMAL(5,2) NOT NULL,

    CONSTRAINT MARCA_PK PRIMARY KEY (idMarca)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CICLO (
    idCiclo INT AUTO_INCREMENT,
    marca INT NOT NULL,
    numero INT NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,

    CONSTRAINT CICLO_PK PRIMARY KEY (idCiclo),
    CONSTRAINT CICLO_MARCA_FK FOREIGN KEY (marca) REFERENCES MARCA(idMarca)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    codigoProduto INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    pontos INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    idMarca INT NOT NULL,

    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoProduto),
    CONSTRAINT PRODUTO_MARCA_FK FOREIGN KEY (idMarca) REFERENCES MARCA(idMarca)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESTOQUE (
    idItem INT AUTO_INCREMENT,
    quantidade INT NOT NULL,
    validade DATE NOT NULL,
    valorCompra DECIMAL(10,2) NOT NULL,
    dataCompra DATE NOT NULL,

    CONSTRAINT ESTOQUE_PK PRIMARY KEY (idItem)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CLIENTE (
    idCliente INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    rua VARCHAR(100),
    numero INT,
    bairro VARCHAR(50),
    complemento VARCHAR(100),

    CONSTRAINT CLIENTE_PK PRIMARY KEY (idCliente)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FORMA_PAGAMENTO (
    idForma INT AUTO_INCREMENT,
    nomeForma VARCHAR(50) NOT NULL,
    taxa DECIMAL(5,2) ,
    numParcelas INT ,

    CONSTRAINT FORMA_PAGAMENTO_PK PRIMARY KEY (idForma)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VENDA (
    idVenda INT AUTO_INCREMENT,
    valorVenda DECIMAL(10,2) NOT NULL,
    dataVenda DATE NOT NULL,
    idCliente INT NOT NULL,
    idForma INT NOT NULL,
    idCiclo INT NOT NULL,

    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_CLIENTE_FK FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente),
    CONSTRAINT VENDA_FORMA_PAGAMENTO_FK FOREIGN KEY (idForma) REFERENCES FORMA_PAGAMENTO(idForma),
    CONSTRAINT VENDA_CICLO_FK FOREIGN KEY (idCiclo) REFERENCES CICLO(idCiclo)
)Engine = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE vende (
    idVenda INT NOT NULL,
    codigoProduto INT NOT NULL,

    CONSTRAINT vende_VENDA_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda),
    CONSTRAINT vende_PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = InnoDB;

CREATE TABLE contem (
    idItem INT NOT NULL,
    codigoProduto INT NOT NULL,
    CONSTRAINT contem_ESTOQUE_FK FOREIGN KEY (idItem) REFERENCES ESTOQUE(idItem),
    CONSTRAINT contem_PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO(codigoProduto)
)Engine = InnoDB;

CREATE TABLE telefone (
    cliente INT NOT NULL,
    ddi INT NOT NULL,
    ddd INT NOT NULL,
    numero INT NOT NULL,

    CONSTRAINT telefone_FK FOREIGN KEY (cliente) REFERENCES CLIENTE(idCliente)
)Engine = InnoDB;

CREATE TABLE quantidade (
    idVenda INT NOT NULL,
    quantidade INT NOT NULL,

    CONSTRAINT quantidade_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda)
)Engine = InnoDB;

CREATE TABLE produtos (
    idVenda INT NOT NULL,
    produto INT NOT NULL,

    CONSTRAINT produtos_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda),
    CONSTRAINT _FK FOREIGN KEY (produto) REFERENCES PRODUTO(codigoProduto)
)Engine = InnoDB;