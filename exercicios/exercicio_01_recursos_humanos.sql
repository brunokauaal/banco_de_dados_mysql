CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
idade INT,
cargo VARCHAR (255),
salario DECIMAL NOT NULL,
primary key(id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome,idade,cargo,salario)
values ("Bruno",18,"Web Junior",3.000);
INSERT INTO tb_colaboradores (nome,idade,cargo,salario)
values ("Rafael",30,"Senior",23.000);
INSERT INTO tb_colaboradores (nome,idade,cargo,salario)
values ("Lisa",25,"Senior",23.000);
INSERT INTO tb_colaboradores (nome,idade,cargo,salario)
values ("João",30,"Web junior",3.500);
INSERT INTO tb_colaboradores (nome,idade,cargo,salario)
values ("Guilherme",23,"Web junior",3.500);

ALTER  TABLE tb_colaboradores MODIFY  salario decimal (6,3);
SELECT * FROM tb_colaboradores WHERE salario > 2.000;

SELECT * FROM tb_colaboradores WHERE salario < 2.000;

ALTER TABLE tb_colaboradores ADD  email varchar(255);
UPDATE tb_colaboradores SET email= "rafael@email.com" WHERE id=2;
-- Coloquei todos os emails
UPDATE tb_colaboradores SET nome = 'Alex' WHERE id = 6;
UPDATE tb_colaboradores SET salario = 3.500 WHERE id = 1 ;