create database db_ex_ecommerce;

use db_ex_ecommerce;

create table tb_produtos(
id_produto bigint auto_increment not null,
nome varchar(255) not null,
preco decimal(8,2) not null,
marca varchar(255),
quantidade int,
primary key (id_produto)
);

ALTER TABLE tb_produtos ADD modelo VARCHAR(255);

INSERT INTO tb_produtos (nome,modelo,preco,marca,quantidade) 
VALUES ("Mouse","Griffin",120.53,"Redragon",50),
("Teclado","Kumara",250.09,"Redragon",26),
("Mouse","Cobra",150.62,"Redragon",32),
("Teclado","Lakshmi",211.75,"Redragon",65),
("Monitor","UltraGear",1211.75,"LG",48),
("Headset","Cloud Stinger",288.55,"HyperX",10),
("Monitor","IPS",777.98,"AOC",17),
("Headset","Lamia 2",223.52,"Redragon",810);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 180.09 where id_produto = 3

