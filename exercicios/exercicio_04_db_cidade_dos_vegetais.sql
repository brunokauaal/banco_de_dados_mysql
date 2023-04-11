CREATE DATABASE db_cidade_dos_vegetais;


USE db_cidade_dos_vegetais;


CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR (255) NOT NULL,
tipo VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);


INSERT INTO tb_categorias (nome_categoria, tipo) VALUES
('Vegetais', 'Hortaliças'),
('Frutas', 'Naturais'),
('Cereais', 'Grãos'),
('Bebidas', 'Sucos'),
('Especiarias', 'Condimentos');








SELECT * FROM tb_categorias;

CREATE  TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR (255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
quantidade INT NOT NULL,
descricao VARCHAR(255) NOT NULL,
categorias_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

-- HEHE MUITO MAIS FACIL
INSERT INTO tb_produtos (nome_produto, preco, quantidade, descricao, categorias_id) VALUES
('Alface Crespa', 2.50, 50, 'Folhas verdes e crocantes', 1),
('Tomate', 3.20, 40, 'Fruto vermelho e suculento', 1),
('Maçã', 4.50, 30, 'Fruta doce e suculenta', 2),
('Banana', 2.80, 60, 'Fruta rica em potássio', 2),
('Arroz Integral', 8.00, 20, 'Grão rico em fibras', 3),
('Aveia em Flocos', 6.50, 15, 'Grão rico em proteínas', 3),
('Suco de Laranja', 5.00, 25, 'Bebida natural e refrescante', 4),
('Suco de Abacaxi', 5.50, 20, 'Bebida tropical e doce', 4);

SELECT * FROM tb_produtos;


SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco < 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 20;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id
WHERE tb_categorias.nome_categoria="Frutas";

