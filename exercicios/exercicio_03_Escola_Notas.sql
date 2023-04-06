CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_notas(
id INT AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  idade INT NOT NULL,
  genero VARCHAR(10) NOT NULL,
  serie INT NOT NULL,
  nota DECIMAL(3,2) NOT NULL,
  primary key(id)
  );
  
  SELECT * FROM tb_notas;
  
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Bruno",17,"Masculino",3,8.5);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Liza",17,"Feminina",3,5.5);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Rafael",18,"Masculino",3,4.0);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Guilherme",18,"Masculino",3,10.0);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Thiago",18,"Masculino",3,1.0);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Sofia",17,"Femenina",2,7,5);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Ary",16,"Feminina",1,8.0);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Lucas",15,"Masculino",1,7.0);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values("Amanda",18,"Feminina",3,5.0);
  INSERT INTO tb_notas (nome,idade,genero,serie,nota)
  values ("Katarina",18,"Feminina",3,6.0);
  
  SELECT * FROM tb_notas WHERE nota > 7.0;
  SELECT * FROM tb_notas WHERE nota < 7.0;
  
  UPDATE tb_notas  SET  nota = 5.5 WHERE id=3;
  