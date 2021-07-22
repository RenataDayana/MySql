create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
cor varchar(255),
tamanho varchar(255),
vendaPorUn boolean,

primary key (id)
);

insert into tb_categoria (cor, vendaPorUn, tamanho) values ("Amarela", true, "Grande");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("Amarela", false, "média");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("vermelha",true,  "Média");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("Roxa",  false, "Pequena");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("Verde", true, "Grande");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("laranja", true, "Média");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("vermelha",false, "Pequena");
insert into tb_categoria (cor, vendaPorUn, tamanho) values ("verde", false, "Pequena");

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
Nome varchar(255),
valor decimal (8,2),
cascaComestivel boolean,
sabor varchar(255),
epocaDeCultivo varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Melão", 10.00, false, "Suave", "Janeiro", 1);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Banana", 6.00, false, "Suave", "Fevereiro", 2);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Maça", 5.00, true, "Suave", "Março", 3);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Uva", 12.00, true, "Citrico", "Novembro", 4);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Melancia", 15.00, false, "Suave", "Dezembro", 5);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Laranja", 5.00, false, "Cítrico", "Setembro",6);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Cereja", 23.00, true, "Suave", "Dezembro", 7);
insert into tb_produtos (Nome, valor, cascaComestivel, sabor, epocaDeCultivo, categoria_id) values ("Limão", 3.00, false, "Cítrico", "Janeiro", 8);

select *from tb_produtos;
select *from tb_produtos where valor >= 10.00;
select *from tb_produtos where valor between 6.00 and 15.00;

select *from tb_produtos where nome like "m%";

select tb_produtos.nome, tb_categoria.tamanho from tb_categoria inner join tb_produtos on  tb_categoria.id = tb_produtos.categoria_id;





