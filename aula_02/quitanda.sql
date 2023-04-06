-- query para criação do banco de dados
CREATE DATABASE db_quitanda;

-- Começar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
preco decimal not null,
primary key(id)
);

-- Visualizar a tabela
SELECT * FROM tb_produtos;

-- Poupular tabela 
INSERT INTO tb_produtos(nomedoproduto , quantidade, preco)
values ("Tomate",50,8.80);
INSERT INTO tb_produtos(nome , quantidade, preco)
values ("Banana",200,12.00);
INSERT INTO tb_produtos(nome , quantidade, preco)
values ("Uva",1200,30.00);
INSERT INTO tb_produtos(nome , quantidade, preco)
values ("perâ",500,2.99);

-- Busca especificas
SELECT nome,quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE  id=2;

SELECT * FROM tb_produtos WHERE preco   > 5.00 AND quantidade < 100;
-- Desabilitar segurança do sql
SET SQL_SAFE_UPDATES = 1;

-- Atulizar colunas da tabela
UPDATE tb_produtos SET tomate = 5.00 WHERE id = 2 ;
UPDATE tb_produtos SET nomedoproduto = 'Ameixa' WHERE id = 9;

-- Deletar itens

DELETE FROM tb_produtos WHERE id =10;

-- Atualizar Coluna

ALTER  TABLE tb_produtos MODIFY  preco decimal (6,2);

-- Adicionar Coluna
ALTER TABLE tb_produtos ADD  descricao varchar(255);

-- Deletar Coluna
ALTER TABLE tb_produtos DROP descricao;

-- Alterar Nome da Coluna
ALTER TABLE tb_produtos	CHANGE  nome nomedoproduto varchar (255);




