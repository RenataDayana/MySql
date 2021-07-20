create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nomeProduto varchar(255),
preco decimal(8,2),
categoria varchar(255),
garantia varchar(255),
dataFabricacao varchar(255),
primary key(id)
);
insert into tb_produtos(nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Livro", 31.90, "papelaria", "não", "12/11/20");
insert into tb_produtos(nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Perfume", 600.20, "perfumaria", "não", "09/03/20");
insert into tb_produtos(nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Panela", 60.90, "Utensílio", "sim", "27/09/20");
insert into tb_produtos(nomeProduto, preco, categoria, garantia, dataFabricacao) values ("bolsa", 590.00, "moda", "não", "12/03/20");
insert into tb_produtos(nomeProduto, preco, categoria, garantia, dataFabricacao) values ("blusa", 37.90, "textil", "não", "11/04/20");

select * from tb_produtos;

select * from tb_produtos where preco>500;
select * from tb_produtos where preco<500;

update tb_produtos set garantia = "sim" where id=4;