-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");


INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

SHOW FULL  COLUMNS FROM tb_produtos;

SELECT * FROM tb_produtos;

-- ORDENAÇÃO DOS DADOS NO CASO AQUI SERIA EM ORDEM CRECENTE
SELECT * FROM tb_produtos ORDER BY nome,preco; 

-- ORDENAÇÃO EM ORDEM DECRECENTE
SELECT * FROM tb_produtos ORDER BY nome,preco DESC; 

-- NOT E O OPERADOR DE NEGAÇÃO AQUI TA PEDINDO QUE ELE EXIBA TDS OS PRODUTOS QUE NAO É IGUAL A 1 
SELECT * FROM tb_produtos WHERE  NOT  categoria_id = 1;

-- Vai trazer os produtos com o preço que esta dentro do parametro
SELECT * FROM tb_produtos WHERE  preco IN(5,1.50,15);

-- Todos os valores que estiver entre o intervalo que nos estabelecemos
SELECT * FROM tb_produtos WHERE  preco BETWEEN 5 AND  15;

-- Traz produtos que contem a silaba ra no começo
SELECT * FROM tb_produtos WHERE  nome LIKE "ra%";

-- Traz o  produto que cotem essa silaba no começo fim tudo que e canto
SELECT * FROM tb_produtos WHERE  nome LIKE "%ra%";


-- Traz o  produto que cotem essa silaba do final
SELECT * FROM tb_produtos WHERE  nome LIKE "%ra";

-- Conta quantas linhas tem a nossa tabela
SELECT COUNT(*) FROM tb_produtos;

-- Contou as linhas da tabela de categorias porem deu 15 porque ele ignora as linhas nullas
SELECT COUNT(categoria_id) FROM tb_produtos;

-- Soma todos os produtos da tabela
SELECT SUM(preco) FROM tb_produtos;

-- SOMA POREM AQUI COM ASS PARA APELIDAR E FICAR ESTETICO PARA O USUARIO
SELECT SUM(preco) AS  Soma_Preço FROM tb_produtos;

-- AVG SERVE PARA TIRAR A MEDIA DE TODOS OS PRODUTOS
SELECT AVG(preco) AS  Média_Preço FROM tb_produtos;

-- Vai tirar media de todas as categorias  ou seja group by agrupa e tira media
SELECT  categoria_id, AVG(preco) AS  Média_Preço FROM tb_produtos GROUP BY categoria_id;

-- Vai mostrar o maior valor  da tabela
SELECT  MAX(preco) FROM tb_produtos;

-- Mostra o menor valor
SELECT  MIN(preco) FROM tb_produtos;

-- FAÇA JUNÇAO  DA TABELA PRODUTOS E  TB CATEGORIAS SOMENTE COM CHAVE PRIMARIA E CHAVE ESTRANGEIRA E EXIBA
SELECT  * FROM tb_produtos 	INNER JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id;

-- AQUI ELE TRAZ OS NULLOS 
SELECT  * FROM tb_produtos 	LEFT JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id;

-- Traz outros que nao tem nada associados 
SELECT  * FROM tb_produtos 	RIGHT JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id;

SELECT  * FROM tb_produtos 	INNER JOIN tb_categorias ON  tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.descricao= "frutas" ORDER BY nome;