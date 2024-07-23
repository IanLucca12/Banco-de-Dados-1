-- -------- < aula6exer4 > --------
--
--                    SCRIPT DE INSERÇÃO (DML)
--
-- Data Criacao ...........: 29/05/2024
-- Autor(es) ..............: Ian Lucca Soares Mesquita
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: FUI
--
-- PROJETO => Inserção de Dados
--         => 05 Tabelas
--        
-- ---------------------------------------------------------
use FUI;

-- Inserindo dados na tabela PROJETO
INSERT INTO PROJETO (id_Projeto, nome, num_Proj, local) VALUES
(1, 'Projeto A', 101, 'Local A'),
(2, 'Projeto B', 102, 'Local B'),
(3, 'Projeto C', 103, 'Local C'),
(4, 'Projeto D', 104, 'Local D');

-- Inserindo dados na tabela DEPENDENTE
INSERT INTO DEPENDENTE (nome, sexo, dt_Nascimento, ligacao) VALUES
('Dependente 1', 'M', '2000-01-01', 'Filho'),
('Dependente 2', 'F', '2002-02-02', 'Filha'),
('Dependente 3', 'M', '2004-03-03', 'Filho'),
('Dependente 4', 'F', '2006-04-04', 'Filha');

-- Inserindo dados na tabela GERENTE_DEPARTAMENTO
INSERT INTO GERENTE_DEPARTAMENTO (dt_gerencia, sexo, salario, dt_Nascimento, matricula, rua, numero, bairro, idade_Derivado_, nome, GERENTE_TIPO, FK_GERENTE_DEPARTAMENTO_matricula, id_departamento, numero_Dep, FK_local_Dep_local_Dep_PK, FK_PROJETO_id_Projeto, FK_GERENTE_DEPARTAMENTO_matricula_) VALUES
('2024-01-01', 'M', 5000, '1980-01-01', 1, 'Rua A', 100, 'Bairro A', 44, 'Gerente A', 1, 1, 1, 201, 'Local A', 1, 1),
('2024-02-02', 'F', 5500, '1985-02-02', 2, 'Rua B', 200, 'Bairro B', 39, 'Gerente B', 2, 2, 2, 202, 'Local B', 2, 2),
('2024-03-03', 'M', 6000, '1990-03-03', 3, 'Rua C', 300, 'Bairro C', 34, 'Gerente C', 3, 3, 3, 203, 'Local C', 3, 3),
('2024-04-04', 'F', 6500, '1995-04-04', 4, 'Rua D', 400, 'Bairro D', 29, 'Gerente D', 4, 4, 4, 204, 'Local D', 4, 4);

-- Inserindo dados na tabela local_Dep
INSERT INTO local_Dep (local_Dep_PK, local_Dep) VALUES
('Local A', 'Local A'),
('Local B', 'Local B'),
('Local C', 'Local C'),
('Local D', 'Local D');

-- Inserindo dados na tabela trabalha
INSERT INTO trabalha (fk_GERENTE_DEPARTAMENTO_matricula, fk_PROJETO_id_Projeto) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
