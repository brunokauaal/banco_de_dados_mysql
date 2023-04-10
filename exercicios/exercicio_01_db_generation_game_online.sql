CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id INT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
forca INT NOT NULL,
magia INT NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, forca, magia, descricao)
VALUES ("Guerreiro", 100, 0, "Classe de combate corpo a corpo");

INSERT INTO tb_classes (nome, forca, magia, descricao)
VALUES ("Mago", 0, 100, "Classe de magia");

INSERT INTO tb_classes (nome, forca, magia, descricao)
VALUES ("Pet", 5, 5, "Classe de mascotes");

INSERT INTO tb_classes (nome, forca, magia, descricao)
VALUES ("Curador", 0, 8, "Classe de cura");



SELECT * FROM tb_classes ;

CREATE TABLE tb_personagens(
id INT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
forca INT NOT NULL,
vida INT NOT NULL,
nivel int not null,
dano int not null,
classes_id INT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Bruno", 5000, 750, 200, 9999, 1);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Rafael", 550, 10000, 150, 8000, 2);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Lisa", 500, 8000, 180, 7000, 2);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("DUCK", 700, 6000, 160, 8500, 1);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Pimenta", 100, 4000, 120, 5000, 4);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Alface", 100, 4000, 120, 5000, 4);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Hill", 100, 4000, 120, 5000, 2);

INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Matue", 100, 4000, 120, 5000, 4);
INSERT INTO tb_personagens (nome, forca, vida, nivel, dano, classes_id)
VALUES ("Teto", 100, 4000, 120, 200, 4);




SELECT * FROM tb_personagens WHERE dano > 2000;
SELECT * FROM tb_personagens WHERE dano < 2000;
SELECT * FROM tb_personagens WHERE forca BETWEEN 100 AND 500;
SELECT * FROM  tb_personagens WHERE nome LIKE  "%no";
SELECT * FROM  tb_personagens WHERE nome LIKE  "%c%";
 
UPDATE tb_personagens SET nome = 'Liza' WHERE id = 3;
-- mals liza sempre esqueço kkkkkk 

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

 
DROP TABLE tb_personagens;
DROP TABLE tb_classes;
