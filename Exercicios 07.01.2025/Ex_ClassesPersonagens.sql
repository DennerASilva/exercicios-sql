drop database db_generation_game_online;

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id_classe bigint auto_increment primary key,
nome_classe varchar(255) not null,
poder_classe varchar(255) not null
);

create table tb_personagens(
id_char bigint auto_increment primary key,
nome_char varchar(255) not null,
ataque decimal(4),
defesa decimal(4),
agilidade decimal(4),
classe_char bigint,
FOREIGN KEY (classe_char) REFERENCES tb_classes(id_classe)
);

insert into tb_classes(nome_classe,poder_classe) values
("Guerreiro","Golpe Poderosos"),
("Bárbaro","Fúria Berserk"),
("Mago","Explosão Arcana"),
("Druida","Transformação Animal"),
("Ladino","Furtividade");

alter table tb_classes add (
atributo_principal varchar(255)
);

update tb_classes set atributo_principal="Força" where id_classe = 1;
update tb_classes set atributo_principal="Força" where id_classe = 2;
update tb_classes set atributo_principal="Inteligência" where id_classe = 3;
update tb_classes set atributo_principal="Sabedoria" where id_classe = 4;
update tb_classes set atributo_principal="Destreza" where id_classe = 5;

insert into tb_personagens(nome_char,ataque,defesa,agilidade,classe_char) values
("Sieg",6000,6000,6000,1),
("Sanuk",8000,3000,3000,2),
("Izfin",7000,5000,1000,3),
("Torbin",5000,5000,8000,4),
("Raela",7000,1500,9000,5),
("Rael",6000,2500,9000,5),
("Merlin",9000,9000,6000,3),
("Lancelot",9000,9000,7000,1);

select * from tb_personagens;

select * from tb_classes;

select * from tb_personagens where ataque>2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome_char like "%c%";

select * from tb_personagens inner join tb_classes
on  tb_personagens.classe_char = tb_classes.id_classe
order by id_char asc;

select * from tb_personagens inner join tb_classes
on  tb_personagens.classe_char = tb_classes.id_classe
where tb_classes.nome_classe = "Mago" order by id_char asc;
