CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
Id BIGINT PRIMARY KEY AUTO_INCREMENT,
Categoria VARCHAR(255),
Tamanho VARCHAR(255));

CREATE TABLE tb_produtos(
Id BIGINT PRIMARY KEY AUTO_INCREMENT,
NomeProduto VARCHAR(255),
Preco DECIMAL(4,2),
Quantidade INT,
CategoriaId BIGINT,
FOREIGN KEY (CategoriaId) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_categorias(Categoria, Tamanho) VALUES 
("Profilático","pequeno"), 
("Curativo","pequeno"),
("Paliativo","pequeno"),
("Diagnosticos","pequeno"),
("Outros","varios");

INSERT INTO tb_produtos(NomeProduto,Preco,Quantidade,CategoriaId) VALUES
("Analgésico Comum",25.50,150,1),
("Antitérmico Infantil",48.90,30,2),
("Anti-inflamatório Oral",72.30,25,2),
("Suplemento Vitamínico",95,500,3),
("Descongestionante Nasal",31.75,120,3),
("Pomada Cicatrizante",60.10,85,4),
("Antiácido Estomacal",22.40,350,4),
("Solução para Lentes",88.65,600,5);

SELECT * FROM tb_produtos WHERE Preco > 50.00;
SELECT * FROM tb_produtos WHERE Preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE NomeProduto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.CategoriaId = tb_categorias.Id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.CategoriaId = tb_categorias.Id 
WHERE CategoriaId=3;
