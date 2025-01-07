create database db_ex_escola;

use db_ex_escola;

create table tb_alunos(
id_aluno bigint auto_increment primary key,
nome varchar(255) not null,
data_nascimento date not null,
serie varchar(255) not null,
nota decimal(4,2)
);

insert into tb_alunos(nome,data_nascimento,serie,nota) 
values ("Isabella dos Anjos","2008-09-05","9º ano",10.0),
("João da Silva", "2010-03-15", "7º ano", 8.5),
("Maria Oliveira", "2011-08-22", "6º ano", 9.0),
("Pedro Santos", "2009-05-10", "8º ano", 7.2),
("Ana Costa", "2012-11-18", "5º ano", 9.5),
("Lucas Pereira", "2010-01-30", "7º ano", 6.8),
("Sofia Almeida", "2011-06-05", "6º ano", 8.9),
("Miguel Rocha", "2008-09-20", "9º ano", 7.5);

select * from tb_alunos where nota > 7.0;

select * from tb_alunos where nota < 7.0;

update tb_alunos set serie = "8º ano" where id_aluno = 6;

select * from tb_alunos;