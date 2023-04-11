CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT  AUTO_INCREMENT,
nome VARCHAR (50),
descricao VARCHAR(100) NOT NULL,
PRIMARY KEY(ID)
);

SELECT * FROM tb_categorias;

INSERT INTO  tb_categorias (nome,descricao)
VALUES("SALGADA","QUEIJO,FRANGO,CARNE");
INSERT INTO  tb_categorias (nome,descricao)
VALUES("DOCE","NUTELLA,CHOCOLATE,CACAL");
INSERT INTO  tb_categorias (nome,descricao)
VALUES("VEGANA","CARNE ARTIFICIAL,FRANGO ARTIFICIAL");
INSERT INTO  tb_categorias (nome,descricao)
VALUES ("CHINESA","CARNE CHINESA,FRANGO CHINES");
INSERT INTO  tb_categorias (nome,descricao)
VALUES ("ITALIANA","CARNE ITALIANA ,FRANGO ITALIANO");




CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
descricao VARCHAR (255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES  tb_categorias(id)
);


INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA  QUEIJÃO","4 CAMADAS DE QUEIJO",40.50,1);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA BOLVINA","CARNE BOLVINA",50.00,1);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA MASTER","CARNE BOLVINA  COM QUEIJO",65.50,1);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA DOCE","CHOCOLATE",70.50,2);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA ITALIA","PEPERONE COM QUEIJO ",85.50,5);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA MONSTER","PEIXE CHINES",95.50,4);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA SOFT","Carne de soja",100.00,3);
INSERT INTO tb_pizzas(nome,descricao,preco,categoria_id)
VALUES("PIZZA HEAVY","CARNE COM FRANGO ARTIFICIAL",95.50,3);

SELECT * FROM  tb_pizzas WHERE preco > 40;
SELECT * FROM  tb_pizzas WHERE preco <=40.50;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT* FROM tb_pizzas WHERE nome LIKE "%M%";



SELECT tb_pizzas.id, tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_categorias.nome AS categoria 
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;


SELECT tb_pizzas.*, tb_categorias.nome AS categoria 
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome = 'DOCE';





SELECT * FROM tb_pizzas;
DROP TABLE tb_categorias;
DROP TABLE tb_pizzas;
