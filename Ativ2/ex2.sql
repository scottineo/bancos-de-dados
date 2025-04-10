CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
Id BIGINT PRIMARY KEY AUTO_INCREMENT,
Tamanho VARCHAR(255));

CREATE TABLE tb_pizzas(
Id BIGINT PRIMARY KEY AUTO_INCREMENT,
Sabor VARCHAR(255),
Preco DECIMAL(4,2),
descricao VARCHAR(255),
TamanhoId BIGINT,
FOREIGN KEY (TamanhoId) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_categorias(Tamanho) VALUES 
("Mini-broto"), 
("Broto"),
("Normal"),
("Grande"),
("Extra Grande");

INSERT INTO tb_pizzas(Sabor,Preco,descricao,TamanhoId) VALUES
("Marguerita",20.90,"queijo, tomate, manjericao",2),
("Marguerita",55.90,"queijo, tomate, manjericao",3),
("Marguerita",70.90,"queijo, tomate, manjericao",4),
("Queijo",22.90,"queijo",3),
("Queijo",45.90,"queijo",4),
("Abobrinha",40.90,"abobrinha e queijo",3),
("Abobrinha",69.90,"abobrinha e queijo",4),
("Abobrinha",79.90,"abobrinha e queijo",5);

SELECT * FROM tb_pizzas WHERE Preco > 45.00;
SELECT * FROM tb_pizzas WHERE Preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE Sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.TamanhoId = tb_categorias.Id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.TamanhoId = tb_categorias.Id 
WHERE TamanhoId=3;
