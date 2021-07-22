create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
setor varchar (255),
receituario boolean,
metodoCompra varchar (255),
primary key (id)

);

insert into tb_categoria (setor, receituario, metodoCompra) values ("Perfumaria", false, "online");
insert into tb_categoria (setor, receituario, metodoCompra) values ("Dermo", true, "online");
insert into tb_categoria (setor, receituario, metodoCompra) values ("Medicamentos", true, "presencial/online");
insert into tb_categoria (setor, receituario, metodoCompra) values ("Materiais", false, "presencial");

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
dataValidade varchar(255),
forma varchar (255),
valor decimal (8,2),
entrega varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Beclometasona", "11/12/2022", "Solução", 51.75, "presencial", 3);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Amoxilina", "22/03/2022", "Comprimido", 70.00, "presencial", 3);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Perfume", "04/01/2029", "loção", 200.00, "online", 1);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Shampoo", "15/04/2029", "creme", 29.00, "online", 1);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Hidratante área dos olhos", "07/02/2024", "creme", 180.00, "presencial", 2);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Creme p/ acnes", "12/05/2023", "gel", 59.00, "presencial", 2);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Cinta ", "01/01/2029", "tecido", 57.98, "presencial", 4);
insert into tb_produtos (nome, dataValidade, forma, valor, entrega, categoria_id) values ("Bota ortopédica", "12/05/2023", "tecido", 35.00, "presencial", 4);

select*from tb_produtos;

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 3.00 and 60.00;
select * from tb_produtos where nome like "b%";

select  tb_produtos.nome, tb_categoria.receituario from tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where entrega = "presencial";
