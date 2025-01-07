create database ex_rh_empresa;

use ex_rh_empresa;

create table tb_funcionarios(
	id_funcionario BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE, 
    cpf bigint NOT NULL,
    cargo VARCHAR(255),
    salario DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id_funcionario)
);

ALTER TABLE tb_funcionarios MODIFY cpf VARCHAR(14) not null;

INSERT INTO tb_funcionarios(nome,data_nascimento,cpf,cargo,salario) 
VALUES ("Denner","2003-3-12","123.456.789-12","Dev Java Jr.",2500.00), 
("Gustavo","2002-7-23","123.456.789-13","Dev Java Pleno",5000.00), 
("Débora","2005-5-20","123.456.789-14","Dev Java Estagiária",1800.00),
("Melissa","1995-12-1","123.456.789-15","Dev Java Sr.",10000.00),
("Roberto","2000-8-2","123.456.789-16","Dev Java Pleno",5000.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 3000 WHERE id_funcionario = 1;