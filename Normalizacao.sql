CREATE DATABASE normalizacao;
USE normalizacao;

/*
Para um tabea estar na primeira forma normal,
é necessario que não existam grupos de valores repetidos,
seus valores devem ser atomicos (unicos) e a tabela 
deve possuir um identicador que identifique o dado como único
*/

create table pessoa(
	id integer primary key auto_increment,
	nome varchar(30),
    sobrenome varchar(50),
    idade int,
    sexo varchar(15),
    email varchar(100),
    cpf varchar(14) not null unique,
    cidade varchar(50),
    bairro varchar(50),
    cep varchar(10),
    complemento varchar(100),
    logradouro varchar(100),
    estado varchar(50),
    uf char(2),
    numero varchar(10),
    telefone varchar(16),
    ddd char(3),
    celular varchar(16),
    fixo varchar(16),
    comercial varchar(16)
);

INSERT INTO `normalizacao`.`pessoa`
(`id`,
`nome`,
`sobrenome`,
`idade`,
`sexo`,
`email`,
`cpf`,
`cidade`,
`bairro`,
`cep`,
`complemento`,
`logradouro`,
`estado`,
`uf`,
`numero`,
`telefone`,
`ddd`,
`celular`,
`fixo`,
`comercial`)
VALUES
(
null,
"Janaina",
"Arque",
29,
"F",
"janaina.arque@aluna.com",
"123.456.789-00",
"Brasilia",
"não sei",
"77300-900",
"senai",
"SIG alguma coisa",
"Distrito Federal",
"DF",
"100",
"995552-6633",
"061",
"9999-9999",
null,
null);


select * from pessoa;

/*
Para estar na segunda forma normal os atributos devem
depender da chave primaria em sua totalidade
não apenas parte dela
*/



create table pessoa2(
	idPessoa integer primary key auto_increment,
    nome varchar(50),
    sobrenome varchar(50),
    cpf varchar(14) not null unique,
    sexo varchar(10),
    id_endereco integer,
    constraint fk_id_endereco_endereco
    foreign key (id_endereco) references endereco(idEndereco)
);

create table endereco(
	idEndereco integer primary key auto_increment,
	cep varchar(13),
    bairro varchar(100),
    cidade varchar(100),
    uf varchar(2)
);



insert into pessoa2 values(null, "Janaina", "Arque", "123.456.789-19", "F", 1); 
insert into pessoa2 values(null, "Weden", "Medeiros", "234.456.789-19", "M", 1); 
insert into pessoa2 values(null, "Pessoa 2", "Dois", "546.456.789-19", "M", 2); 
insert into pessoa2 values(null, "Pessoa 3", "Tres", "456.456.789-19", "F", 3); 
insert into pessoa2 values(null, "Pessoa 4", "Quatro", "555.456.789-19", "M", 2); 

insert into endereco values(null, "73000-000", "não sei", "Brasília", "DF");
insert into endereco values(null, "73000-100", "SIG", "Brasília", "DF");
insert into endereco values(null, "73000-000", "não sei", "Brasília", "DF");

select * from pessoa2;
select * from endereco;

select * from endereco inner join pessoa2 on endereco.idEndereco = pessoa2.id_endereco;
select nome, cpf, cep, bairro, cidade, uf from pessoa2 inner join endereco on pessoa2.id_endereco = endereco.idEndereco;

#drop table endereco;
#drop table pessoa2;


create table telefone(
	idTelefone integer primary key auto_increment,
    ddd varchar(5),
    numero varchar(10),
    id_pessoa integer,
    constraint fk_pesssoa_pessoa
    foreign key (id_pessoa) references pessoa2(idPessoa)
);

insert into telefone values (null, "061", "0000-9999", 1),
(null, "061", "0000-9999", 1),
(null, "062", "0077-9999", 2),
(null, "063", "0066-9963", 3);











