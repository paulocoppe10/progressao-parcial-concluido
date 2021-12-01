CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE usuario(
cdusuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
email VARCHAR(100),
senha VARCHAR(100)
)engine=InnoDB default charset=utf8;
CREATE TABLE cliente(
cdcliente INT PRIMARY KEY AUTO_INCREMENT,
rgcliente INT,
nome VARCHAR(100),
nascimento DATE,
email VARCHAR(100)
)engine=InnoDB default charset=utf8;
CREATE TABLE estado(
cdestado INT PRIMARY KEY AUTO_INCREMENT,
nomeestado VARCHAR(100)
)engine=InnoDB default charset=utf8;
CREATE TABLE doacao(
cddoacao INT PRIMARY KEY AUTO_INCREMENT,
datadoacao DATE
)engine=InnoDB default charset=utf8;
CREATE TABLE livros(
cdlivro INT PRIMARY KEY AUTO_INCREMENT,
nomelivro VARCHAR(100),
autor VARCHAR(100),
localpublicacao VARCHAR(100),
datapublicacao DATE,
doacao INT,
editora VARCHAR(100),
descricao VARCHAR(100),
estado INT
)engine=InnoDB default charset=utf8;
CREATE TABLE categoria(
cdcategoria INT PRIMARY KEY AUTO_INCREMENT,
nomecategoria VARCHAR(100)
)engine=InnoDB default charset=utf8;
CREATE TABLE entrada(
cdentrada INT PRIMARY KEY AUTO_INCREMENT,
idcliente INT,
dataentrada DATE
)engine=InnoDB default charset=utf8;
CREATE TABLE saida(
cdsaida INT PRIMARY KEY AUTO_INCREMENT,
idcliente INT,
datasaida DATE
)engine=InnoDB default charset=utf8;
-- inserindo categorias
INSERT INTO categoria (cdcategoria, nomecategoria) VALUES
(1,"fundamentais"),
(2,"humanas"),
(3,"historia"),
(4,"acaoeaventura"),
(5,"romance"),
(6,"terror"),
(7,"religioso"),
(8,"culinaria"),
(9,"suspense");
-- cadastro de usuario
INSERT INTO usuario (cdusuario, nome, email, senha) VALUES
(1,"Abraão","Abraão","123"),
(2,"Evelin","Evelin","123454"),
(3,"Felipe","Felipe","12345"),
(4,"Joshua","Joshua","123456"),
(5,"Paulo","Paulo","1234567"),
(6,"Talita","Talita","12345678");
-- cadastro de livro
INSERT INTO livros (cdlivro, nomelivro, autor, localpublicacao, datapublicacao, doacao, editora, descricao, estado) VALUES
(1,"maze runner correr ou morrer","jr", "brasil", "2013-12-1","2","ftd",".txt","2"),
(2,"viagem ao centro da terra","jv", "italia", "2019-07-14","1","fnde",".txt","1"),
(3,"vinte mil leguas submarinas","jv", "brasil", "2019-07-14","3","fnde",".txt","2"),
(4,"geracoes do amanha","jv", "eua", "1983-11-04","1","alef",".txt","1"),
(5,"cinco semanas em um balao","jv", "europa", "2019-07-14","1","ftd",".txt","1"),
(6,"geracoes do amanha","jr", "europa", "2019-07-14","3","arqueiro",".txt","2"),
(7,"maze runner a prova de fogo","jr", "franca", "2013-12-1","3","gunterfield",".txt","2"),
(8,"geracoes","jr", "brasil", "2019-07-14","2","alef","..","2"),
(9,"volta ao mundo em sete dias","jv", "brasil", "2019-07-14","2","gunterfield",".txt","1"),
(10,"maze runner a cura mortal","jr", "brasil", "2013-12-1","3","arqueiro",".txt","1");
-- selects pedidos inicio:
-- mostrando livros inferiores a 5 anos
select * from livros where datapublicacao > "2016-01-01";
-- livros com geracoes no nome
SELECT * FROM tblivros WHERE nome = 'geracoes';
-- livros publicados fora do brasil
SELECT * FROM livros WHERE localpublicacao NOT LIKE 'brasil';
-- editoras em ordem alfabetica
SELECT * FROM livros ORDER BY editora asc;
-- pessoas que nasceram na decada de 80 a 90
SELECT * FROM cliente WHERE nascimento between '1980-01-01' and '1999-12-31';
-- livros com tecnologia da informacao
SELECT * FROM tblivros WHERE nome = 'tecnologia da informacao';
-- selects pedidos fim:

-- selects que usei para alguns testes:
-- MOSTRANDO TODAS AS CATEGORIAS
SELECT * FROM categoria;
-- MOSTRANDO TODOS OS USUARIOS SEM A SENHA
SELECT cd_usuario, nm_nome, nm_login FROM usuario;
-- mostrando todos os livros
select * from livros;