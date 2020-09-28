create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
CREATE TABLE tb_categoria(
	id_categoria int PRIMARY KEY AUTO_INCREMENT,
	escola varchar(55),
    tipo_curso varchar (55),
	modo enum('online','presencial')
);
CREATE TABLE tb_curso(
	curso varchar (55),
    duracao varchar(55),
    turno varchar(55),
    preco decimal (10,2),
    turma varchar(55),
	fk_id_categoria int,
	CONSTRAINT fk_tb_categoria FOREIGN KEY (fk_id_categoria) REFERENCES  tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (escola,tipo_curso,modo)
VALUES
	("Generation","programaçao",'online'),
    ("senai","tecnico",'presencial'),
    ("digital house","programação",'online'),
    ("fisk","idioma",'presencial'),
    ("alura","programação",'online');
    # generation 1, senai 2, digital 3, fisk 4, alura 5
INSERT INTO tb_curso (curso, duracao, turno, preco,turma,fk_id_categoria)
VALUES
	("front end","12 meses","manhã",1000,"a",1),
    ("eletrica","6 meses","tarde",600,"b",2),
    ("back end","3 meses","noite",800,"c",3),
    ("inglês","12 meses","manhã",1200,"a",4),
    ("java","4 meses","noite",900,"b",5),
    ("mecanica","6 meses","tarde",800,"d",2),
    ("espanhol","12 meses","noite",1200,"b",4),
    ("MySQL","3 meses","manhã",1600,"a",1);
select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where curso like 'j%';
select * from tb_curso inner join tb_categoria on tb_curso.fk_id_categoria = tb_categoria.id_categoria;
select * from tb_categoria where tipo_curso = "programação";