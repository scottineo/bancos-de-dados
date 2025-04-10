CREATE DATABASE db_exercicios;

USE db_exercicios;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario decimal(6,2) NOT NULL,
departamento varchar(255),
data_admissao DATE,
primary key(id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao) VALUES 
("Maria Joana", "Desenvolvedora Java", 5000.00, "TI", "2023-05-28"),
("Jorge", "Desenvolvedor Node", 5000.00, "TI", "2024-05-08"),
("Cleber", "Assistente administrativo", 3000.00, "ADM", "2022-01-28"),
("Rosana", "Gerente", 9000.00, "TI", "2020-07-28"),
("Ariel", "Secretarie", 4000.00, "ADM", "2020-07-28");

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = "1900" WHERE id=8;