drop database db_pizzaria_legal;

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id_categorias BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipo_sabor VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL
);

create table tb_pizzas(
id_pizzas BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255) NOT NULL,
preco DECIMAL(5,3) NOT NULL,
bordas VARCHAR(255) NOT NULL,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id_categorias)
);

INSERT INTO tb_categorias (tipo_sabor,tamanho) VALUES 
("Salgada","Broto"),
("Salgada","Normal"),
("Salgada","Gigante"),
("Doce","Broto"),
("Doce","Normal"),
("Doce","Gigante");
 
 INSERT INTO tb_pizzas (sabor,preco,bordas,categoriaid) VALUES 
("Romeu e Julieta",40.00,"Simples",4),
("Calabresa",55.00,"Simples",2),
("Brócolis com Bacon",50.00,"Recheada",2),
("Milho 1",50.00,"Recheada",3),
("Frango com Catupiry",60.00,"Recheada",1),
("Brigadeiro",50.00,"Recheada",5),
("Portuguesa",65.00,"Recheada",3),
("Banana Doce",70.00,"Simples",6);

 select * from tb_pizzas;
 
 select * from tb_categorias;
 
 SELECT * FROM tb_pizzas WHERE preco < 45;
 
 SELECT * FROM tb_pizzas where preco BETWEEN 50 AND 100;
 
 SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
 
 SELECT id_pizzas, sabor, preco, bordas, tb_categorias.tipo_sabor, tb_categorias.tamanho FROM tb_pizzas INNER JOIN tb_categorias 
 on tb_pizzas.categoriaid = tb_categorias.id_categorias;
 
  SELECT id_pizzas, sabor, preco, bordas, tb_categorias.tipo_sabor, tb_categorias.tamanho FROM tb_pizzas INNER JOIN tb_categorias 
 on tb_pizzas.categoriaid = tb_categorias.id_categorias WHERE tb_categorias.tipo_sabor = "Doce";
 