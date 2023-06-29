/*
RESPOSTA 1
Para criar um banco de dados devemos usar o comando CREATE DATABASE + nome do banco
após a criação devemos colocar o banco em uso usando o comando
USE + nome do banco;
Pra a criação de tabelas devemos usar o comando CREATE TABLE + nome da tabela
abrir e fechar chave e ponto e virgula no após o fecha parenteses;
dentro das parenteses colocamos em primeiro o nome do atributo depois seu tipo
caso hajam mais atributos eles devem ser separados por virgula;
para realizar uma inserção de dados, usamos o comando
INSET INTO + NOME DA TABELA + VALUES ();
dentro do parentese a inserção dos dados deve seguir a mesma ordem de criação
da tabela; 
para realizar a consulta de uma tabela usamos o comando
SELECT * FRIN + NOME DA TABELA
*/

/*
RESPOSTA 2
SELECT * FROM = seleciona tudo de uma tabela e mostra todos os dados
INSERT INTO VALUES = insere os dados de uma tabela
CONCAT = concatena os atributos com conjunto de caracteres
COUNT() = realiza a contagem de determinado atributo de uma tabela
*/

#3 Crie um banco de dados para salvar dados do produto
#A tabela produto deve possuir: descrição, unidade de medida, valor unitario e quantidade
#cadastrr 5 produtos
#mostrar uma mensagem concatenando os atributos

CREATE DATABASE exercicio_produto;
use exercicio_produto;

create table produto(
	descricao varchar(100),
    unidade_medida enum("und", "lts", "mts"),
    valor_unitario double,
    quantidade int
);

insert into produto values("pendrive", 1, 15.00, 10),
("leite", 2, 6.56, 100),
("chocolate", "und", 12.00, 50),
("todinho", "lts", 2.50, 200),
("Chá verde", 2, 6.00, 350);

select * from produto;

select concat ("Há ", quantidade, " ", descricao, " no estoque, com valor unitário de ", valor_unitario, " reais") as "mostrar dados" from produto;

#concate : o produto tem a unidade de medida tal

select concat ("O produto ", descricao, " tem a unidade de medida ", unidade_medida) as informacao from produto;




