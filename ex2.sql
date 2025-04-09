CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
preco decimal(6,2) NOT NULL,
categoria varchar(255),
descricao varchar(255),
primary key(id)
);

INSERT INTO tb_ecommerce(nome_produto, quantidade, preco, categoria, descricao) VALUES 
("Garrafa", 50, 49.99, "Esporte", "Garrafa preta com tampa rosqueável"),
("Lápis de cor", 10, 19.99, "Material Escolar", "Caixa de lápis com 12 cores"),
("Celular", 100, 4999.99, "Eletronicos", "Smartphone android"),
("Hidratante corporal", 200, 79.99, "Beleza", "Hidratante sem cheiro"),
("Caixa de som", 300, 299.99, "Eletronicos", "Caixa preta com bluetooth"),
("Colar", 15, 49.99, "Acessórios", "Gargantilha metal preto"),
("Cigarro", 300, 14.99, "Outros", "Pacote com 20 cigarros"),
("Mouse", 100, 79.99, "Eletronicos", "Mouse sem fio com pilha");


SELECT * FROM tb_ecommerce WHERE preco > 500;
SELECT * FROM tb_ecommerce WHERE preco < 500;

UPDATE tb_ecommerce SET descricao = "Produto que causa câncer" WHERE id=7;
