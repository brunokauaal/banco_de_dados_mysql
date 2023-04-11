CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;



CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR (255) NOT NULL,
descricao VARCHAR (255) NOT NULL,
PRIMARY KEY (id) 
);



INSERT INTO tb_categorias (nome_categoria,descricao)
VALUES ("Medicamento Generico","substância que produz os efeitos terapêuticos");
INSERT INTO tb_categorias (nome_categoria,descricao)
VALUES("Medicamento Alopático","cura pelos contrários");
INSERT INTO tb_categorias (nome_categoria,descricao)
VALUES("Medicamento Similar"," É indicado no tratamento da Escabiose (Sarna)");
INSERT INTO tb_categorias (nome_categoria,descricao)
VALUES("Medicamento Manipulado","possibilidade de o paciente poder ser tratado de forma personalizada e sob medida.)");
INSERT INTO tb_categorias (nome_categoria,descricao)
VALUES("Medicamento Fitoterápico"," É o medicamento feito exclusivamente à base de plantas");


SELECT * FROM tb_categorias;




CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR (255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
origin_produto VARCHAR (255) NOT NULL,
categorias_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Paracetamol",20.50,"BRASIL",1);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Aspirina",65.00,"BRASIL",2);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Glutamina em pó",40.0,"BRASIL",4);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Camomila",10.50,"BRASIL",5);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Ginkgo bilobal",20.50,"BRASIL",5);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Cloridrato de Metformina",200.00,"BRASIL",3);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Losartana Potássica",20.00,"BRASIL",2);
INSERT INTO tb_produtos(nome_produto,preco,origin_produto,categorias_id)
VALUES ("Cloridrato de Metformina",30.50,"BRASIL",2);


SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE  "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id
WHERE tb_categorias.nome_categoria="Medicamento Alopático";




