CREATE DATABASE banco_teste;
USE banco_teste;

CREATE TABLE pessoa(
	nome VARCHAR(50),
    idade INT,
    sexo char(1),
    peso DOUBLE
);

desc pessoa;

INSERT INTO pessoa VALUES("Janaina Arque", 29, 'F', 80.65);

SELECT * FROM pessoa;