CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
Id BIGINT PRIMARY KEY AUTO_INCREMENT,
Classe VARCHAR(255),
Nivel INT,
Experiencia FLOAT);

CREATE TABLE tb_personagens(
Id BIGINT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
PoderAtaque INT,
PoderDefesa INT,
Origem VARCHAR(255),
ClasseId BIGINT,
FOREIGN KEY (ClasseId) REFERENCES tb_classes(Id)
);

INSERT INTO tb_classes(Classe, Nivel, Experiencia) VALUES 
("Clérigo", 1, 0.0), 
("Bárbaro", 1, 0),
("Mago", 1, 0),
("Monge", 1, 0),
("Arqueiro",1,0);

INSERT INTO tb_personagens(Nome,Origem,ClasseId,PoderAtaque,PoderDefesa) VALUES
("Keyleth","Zephrah",3,2000,3000),
("Grog","TalDorei",2,5000,3000),
("Percy","TalDorei",5,4000,3000),
("Pike","TalDorei",1,4000,5000),
("Scanlan","Zephrah",4,2000,3000),
("Vex","Zephrah",5,4000,4000),
("Vax","Zephrah",5,4000,4000),
("Taryon","TalDorei",4,5000,3000);

SELECT * FROM tb_personagens WHERE PoderAtaque > 2000;
SELECT * FROM tb_personagens WHERE PoderDefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.ClasseId = tb_classes.Id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.ClasseId = tb_classes.Id 
WHERE ClasseId=5;
