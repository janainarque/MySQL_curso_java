use atividade_sql;

CREATE TABLE pessoa(
	nome varchar(100),
    idade int,
    telefone varchar(15),
    endereco varchar(150),
    email varchar(60)
);

INSERT INTO pessoa VALUES("Janaina Arque", 29, '61000000', 'qn 14b conj 2, Go, Goias', 'janaina.a.silva7@aluno.senai.br');
INSERT INTO pessoa VALUES("Nome 2", 10, '61999999', 'qn 14b conj 2, AP, Amapá', 'nome2@gmail.com');
INSERT INTO pessoa VALUES("Nome 3", 8, '60999999', 'qn 14b conj 2, PA, Para', 'nome3@hotmail.com');
INSERT INTO pessoa VALUES("Nome 4", 15, '62999999', 'qn 14b conj 2, DF, Distrito Federal', 'nome4@gmail.com');
INSERT INTO pessoa VALUES("Nome 5", 18, '63999999', 'qn 14b conj 2, PE, Pernambuco', 'nome5@gmail.com');
INSERT INTO pessoa VALUES("Nome 6", 20, '65999999', 'qn 14b conj 2, AC, Acre', 'nome6@gmail.com');
INSERT INTO pessoa VALUES("Nome 7", 50, '66999999', 'qn 14b conj 2, DF, Brasilia', 'nome7@hotmail.com');
INSERT INTO pessoa VALUES("Nome 8", 55, '69999999', 'qn 14b conj 2, Go, Goias', 'nome8@gmil.com');
INSERT INTO pessoa VALUES("Nome 9", 70, '64999999', 'qn 14b conj 2, BA, Bahia', 'nome9@hotmail.com');
INSERT INTO pessoa VALUES("Nome 10", 90, '67999999', 'qn 14b conj 2, RR, Roraima', 'nome10@yahoo.com');


select * from  pessoa;
select * from pessoa where endereco like '%qn 14b conj 2%' and idade > 18;

INSERT INTO pessoa VALUES("Nome 10", 90, '35000000', 'qn 14b conj 2, RR, Roraima', 'nome10@yahoo.com');

select count(*) as quantidade from pessoa where endereco like '%df%';
select * from pessoa where idade = 30;


select count(*) from pessoa;

select * from pessoa;


