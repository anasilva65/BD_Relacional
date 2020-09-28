create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria(
	id_categoria int PRIMARY KEY AUTO_INCREMENT,
	basico enum('cimento','areia','pedra'),
	marca varchar (30),
	tipo enum('entrega','retira'),
    acabamento varchar (55)
);
CREATE TABLE tb_produto(
	nome varchar (55),
    validade varchar(55),
    quantidade varchar(55),
    preco decimal (10,2),
    pagamento enum ('a vista','parcelado'),
	fk_id_categoria int,
	CONSTRAINT fk_tb_categoria FOREIGN KEY (fk_id_categoria) REFERENCES  tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (basico,marca,tipo)
VALUES
	('cimento', "votoran", 'entrega'),
	('areia', "votoran", 'entrega'),
	('pedra', "tupi", 'entrega'),
	('areia',"tupi",'entrega'),
	('cimento', "votoran", 'retira');
INSERT INTO tb_produto (nome, validade, quantidade, preco,pagamento,fk_id_categoria)
VALUES
	("cimento cpII","30 dias","15 pcs",277.5,'a vista',1),
    ("areia fina","30 dias","5 metros",399.5,'a vista',2),
    ("pedra n°4","30 dias"," 4 metros",229,'a vista',3),
    ("cimento cpII","30 dias","1 pcs",18.5,'a vista',1),
	("areia fina","30 dias","2 metros",159.8,'parcelado',2),
	("pedra n°1","30 dias"," 7 metros",400.75,'a vista',3),
	("cimento cpIII","30 dias","6 pcs",111,'parcelado',1),
	("areia grossa","30 dias","1 metros",79.8,'a vista',2);
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like 'c%';
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria;

select * from tb_categoria where basico;