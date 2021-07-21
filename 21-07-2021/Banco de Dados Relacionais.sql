create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nomeJogo varchar(255)not null,
tipoGame varchar(255)not null,
fases int,
primary key (id)
);

insert into tb_classe(nomeJogo, tipoGame, fases) values ("Tom Run", "Ação", 5);
insert into tb_classe(nomeJogo, tipoGame, fases) values ("BoofCats", "Investigação", 8);
insert into tb_classe(nomeJogo, tipoGame, fases) values ("Brain", "Lógica", 20);
insert into tb_classe(nomeJogo, tipoGame, fases) values ("Build", "Design", 3);
insert into tb_classe(nomeJogo, tipoGame, fases) values ("Cook", "Culinária", 5);


select * from tb_classe;

create table tb_personagens (
id bigint auto_increment,
nomePersonagem varchar(255) not null,
funcao varchar(255)not null,
poderAtaque  int,
poderDefesa int,
acessorio boolean,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)

);

insert into tb_personagens (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("TOM","Atleta", 2500,  1100, true, 1);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Mileide","Detetive", 1700, 2000,  true, 2);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Celeste","Professora",3400, 650,   true, 3);
insert into tb_personagens (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Rupert","Servente",1000, 2300,  false, 4);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Angela","Atleta", 900, 3090, false, 1);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Pillut","Pesquisadora",1200, 1800, true, 2);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Morgan","Aluno",2000, 1233, true, 3);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("João","Engenheiro",800, 900, true, 4);
insert into tb_personagens  (nomePersonagem, funcao, poderAtaque, poderDefesa, acessorio, classe_id) values ("Maria","Cozinheira",950, 800, true, 5);

select*from tb_personagens;

select * from tb_personagens where poderAtaque > 2000;
select * from tb_personagens where poderDefesa between 1000 and 2000;

select * from tb_personagens where nomePersonagem like "c%";

select  tb_classe.nomeJogo, tb_personagens.nomePersonagem
from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select  * from tb_classe where fases = 5;