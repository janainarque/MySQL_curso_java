select count(*) as quantidade, nome from pessoa where idade > 15 group by nome;

select nome from pessoa where idade > 15; 

select nome from pessoa where email is null;

#TRAVA de segurança sql para update e delete 
SET SQL_SAFE_UPDATES = 0; 

update pessoa set email = 'meuemail@gmail.com' WHERE nome = 'Nome 8';

select * from pessoa order by nome asc;

create table produto(
	nome_produto varchar(30),
    preço double
);

ALTER table produto add quantidade int;

desc produto;

alter table produto drop column preço;

alter table produto rename column nome_produto to nomes_dos_produtos;

ALTER table produto add preco double;

select concat(nome, " tem ", idade, " anos") from pessoa;

delete from pessoa where nome = 'Nome 6';

select * from pessoa;



