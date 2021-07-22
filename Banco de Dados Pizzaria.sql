create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tamanho varchar(255),
tipoEntrega varchar(255),
bordaRecheada boolean,
primary key (id)
);

insert into tb_categoria (tamanho, tipoEntrega, bordaRecheada) values  ("Grande", "Motoboy", true);
insert into tb_categoria (tamanho, tipoEntrega, bordaRecheada) values  ("Média", "motoboy", true);
insert into tb_categoria (tamanho, tipoEntrega, bordaRecheada) values  ("Pequena", "retirar", false);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nome varchar(255),
sabor varchar(255),
valor decimal (8,2),
promocao boolean,
brinde boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("Portuguesa", "Salgada", 59.90, false, true, 1);
insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("4 Queijos", "Salgada", 60.00, false, true, 1);
insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("Escarola com queijo", "Salgada", 45.50, true, true, 2);
insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("Queijo", "Salgada", 45.00, true, false, 2);
insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("Calabresa", "Salgada", 29.00, true, true, 3);
insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("Chocolate", "Doce", 29.90, true, false, 2);
insert into tb_pizza (nome, sabor, valor, promocao, brinde, categoria_id) values ("Doce de leite", "Doce", 29.00, true, true, 3);

select * from tb_pizza;

select * from tb_pizza where valor > 45.00;
select * from tb_pizza where valor between 29.00 and 60.00;
select * from tb_pizza where nome like "c%";

select tb_pizza.nome,  tb_categoria.tipoEntrega, tb_pizza.valor from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where sabor = "doce";



