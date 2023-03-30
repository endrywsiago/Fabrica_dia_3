CREATE DATABASE desafioSQL;

USE desafioSQL;

CREATE TABLE mercado(
nome VARCHAR(100),
endereco VARCHAR(100),
cnpj BIGINT PRIMARY KEY,
telefone INT 
);
CREATE TABLE funcionario(
nome VARCHAR(100),
funcao VARCHAR(100),
salario INT,
cpf BIGINT PRIMARY KEY
);

CREATE TABLE produto(
nome VARCHAR(100),
preco FLOAT,
fabricacao DATE,
peso INT,
id INT PRIMARY KEY
);


ALTER TABLE mercado ADD COLUMN abre TIME;
ALTER TABLE funcionario ADD COLUMN jornada_diaria TIME;
ALTER TABLE produto ADD COLUMN vencimento DATE;


INSERT INTO mercado
(nome,endereco,cnpj,telefone,abre)
VALUES
('Page Menos','Rua Manoel Gomes',12345678925689,32652500,'07:00:00'),
('Page Mais','Rua Joaquin Teixeira',12345678925698,32652501,'08:00:00'),
('Leve Menos','Rua Maria de Lurdes',12345678925678,32652520,'09:00:00');

INSERT INTO funcionario
(nome,funcao,salario,cpf,jornada_diaria)
VALUES
('Manoel','Caixa',2000,12345678941,'08:00:00'),
('Tiago','Empacotador',2000,12345678954,'06:00:00'),
('Maria','Gerente',4000,12345678952,'12:00:00');

INSERT INTO produto
(nome,preco,fabricacao,peso,id,vencimento)
VALUES
('feijão',2.50,'2022-12-30',1,1,'2023-12-30'),
('arroz',1.50,'2022-10-30',1,2,'2023-10-30'),
('macarrão',3.50,'2022-05-30',1,3,'2023-05-30');

ALTER TABLE mercado DROP COLUMN cnpj;
ALTER TABLE funcionario DROP COLUMN jornada_diaria;
ALTER TABLE produto DROP COLUMN fabricacao;


SELECT * FROM mercado;
SELECT * FROM funcionario;
SELECT * FROM produto;

SELECT * FROM mercado WHERE nome='Page Menos';
SELECT * FROM funcionario WHERE funcao = 'Gerente';
SELECT * FROM produto WHERE preco = '1.50';


SELECT `winequality-red`.`fixed acidity`,
    `winequality-red`.`volatile acidity`,
    `winequality-red`.`citric acid`,
    `winequality-red`.`residual sugar`,
    `winequality-red`.`chlorides`,
    `winequality-red`.`free sulfur dioxide`,
    `winequality-red`.`total sulfur dioxide`,
    `winequality-red`.`density`,
    `winequality-red`.`pH`,
    `winequality-red`.`sulphates`,
    `winequality-red`.`alcohol`,
    `winequality-red`.`quality`
FROM `desafiosql`.`winequality-red`;








#drop database desafioSQL;
