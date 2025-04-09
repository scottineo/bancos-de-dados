CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome_aluno VARCHAR(255) NOT NULL,
turma VARCHAR(255) NOT NULL,
nota_1b decimal(4,2) NOT NULL,
nota_2b decimal(4,2) NOT NULL,
nota_3b decimal(4,2) NOT NULL,
nota_4b decimal(4,2) NOT NULL,
primary key(id)
) AUTO_INCREMENT =1;

INSERT INTO tb_alunos(nome_aluno, turma, nota_1b, nota_2b, nota_3b, nota_4b) VALUES
("Enzo P.", "7B",10,8,5,7.5),
("Enzo S.", "7B",9,8.5,3,6.5),
("Maria P.", "7B",8,8,2,7.5),
("Maria J.", "7B",7,7,9,5.5),
("Pedro G.", "7B",2,3,5,8.5),
("Pedro P.", "7B",7,8,9,10),
("Joana", "7B",10,9,9,8.5),
("Carla", "7B",10,8,5,7.5);

SELECT * FROM tb_alunos WHERE nota_1b > 7.0;
SELECT * FROM tb_alunos WHERE nota_1b < 7.0;

UPDATE tb_alunos SET nota_1b = 10 WHERE id=2;
