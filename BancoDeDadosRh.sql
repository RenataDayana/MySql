create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cargo varchar(255),
salario decimal(8,2),
contatoEmail varchar(255),
contratoAtivo boolean,
primary key(id)
);
insert into tb_funcionarios(nome, cargo, salario, contatoEmail, contratoAtivo) values ("Bruna", "faxineira", 890.75, "bruna@mail.com.br", false);
insert into tb_funcionarios(nome, cargo, salario, contatoEmail, contratoAtivo) values ("Joyce", "Engenheira de software", 8000.75, "joyce@mail.com.br", true);
insert into tb_funcionarios(nome, cargo, salario, contatoEmail, contratoAtivo) values ("Hugo", "operário", 1790.75, "bruna@mail.com.br", true);
insert into tb_funcionarios(nome, cargo, salario, contatoEmail, contratoAtivo) values ("Marta", "Arquiteta", 5500.00, "bruna@mail.com.br", false);

select * from tb_funcionarios;

select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

update tb_funcionarios set contratoAtivo = true where id = 4;