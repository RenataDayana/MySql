create database db_escola;
use db_escola;

create table tb_registroAlunos(
id bigint auto_increment,
nome varchar(255),
idade int,
serie varchar(255),
aulaExtra boolean,
nota decimal,
primary key (id)
);

insert into tb_registroAlunos(nome, idade, serie, aulaExtra, nota) values("Mario", 10, "5ª série", true, 3);
insert into tb_registroAlunos(nome, idade, serie, aulaExtra, nota) values("Fabiana", 8, "3ª série", true, 10);
insert into tb_registroAlunos(nome, idade, serie, aulaExtra, nota) values("Joana", 6, "1ª série", false, 10);
insert into tb_registroAlunos(nome, idade, serie, aulaExtra, nota) values("Gabriellyo", 10, "5ª série", true, 5);
insert into tb_registroAlunos(nome, idade, serie, aulaExtra, nota) values("josé", 11, "6ª série", false, 9);
insert into tb_registroAlunos(nome, idade, serie, aulaExtra, nota) values("Lucas", 12, "7ª série", true, 8);

select *from tb_registroAlunos;
select * from tb_registroAlunos where nota >=7;
select * from tb_registroAlunos where nota <7;

update tb_registroAlunos set nota = 10 where id = 1;
