CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	id_categoria int PRIMARY KEY AUTO_INCREMENT,
	carnes enum('bovino','suino','aves'),
	marca varchar (30),
	tipo enum('peça inteira','fatiado')
);
CREATE TABLE tb_produto(
	tipo_carne varchar (55),
    validade varchar(55),
    kg varchar(55),
    preco decimal (10,2),
	fk_id_categoria int,
	CONSTRAINT fk_tb_categoria FOREIGN KEY (fk_id_categoria) REFERENCES  tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (carnes, marca, tipo)
VALUES
	('bovino', "perdigão", 'fatiado'),
	('aves', "sadia", 'peça inteira'),
	('suino', "sadia", 'fatiado'),
	('bovino', "ceara", 'fatiado'),
	('aves', "perdigão", 'peça inteira');
INSERT INTO tb_produto (tipo_carne, validade, kg, preco,fk_id_categoria)
VALUES
	("contra filé","30 dias","3kg",109.5,1),
    ("picanha","15 dias","4kg",152,1),
    ("panceta","20 dias","6kg",74.40,2),
    ("coxa de frango","20 dias","2kg",17.2,3),
    ("linguiça","20 dias","3kg",30,2),
    ("file mignhon","10 dias","4kg",221.60,1),
    ("costelinha de porco","10 dias","5kg",75,2),
    ("pao de alho","15 dias","1kg",22,1);
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where tipo_carne like 'c%';
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria;
select * from tb_categoria where marca = "perdigão";