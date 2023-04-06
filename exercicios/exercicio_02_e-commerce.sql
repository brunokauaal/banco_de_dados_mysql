CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome VARCHAR (255) NOT NULL,
descricao varchar (255) not null,
preco  decimal not null,
quantidade int,
primary key(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,descricao,preco,quantidade)
values ("HEDESET GAMER", "Fone para jogos",200.0,10);

ALTER  TABLE tb_produtos MODIFY  preco decimal (6,1);

SELECT * FROM tb_produtos WHERE preco > 2000;
SELECT * FROM tb_produtos WHERE preco < 2000;
UPDATE  tb_produtos	SET  preco= 99.0 WHERE id= 8 ;