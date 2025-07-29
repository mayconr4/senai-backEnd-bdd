CREATE DATABASE biblioteca CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;




CREATE TABLE alunos(
id_alunos INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
rg VARCHAR(20) NOT NULL,
curso VARCHAR(120) NOT NULL,
email VARCHAR(120) NOT NULL
)ENGINE=InnoDB;


CREATE TABLE funcionarios(
id_funcionarios INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
data_nascimento DATE NOT NULL,
contato VARCHAR(20) NOT NULL,
cpf VARCHAR(20) NOT NULL 
);


CREATE TABLE livros(
id_livros INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(90) NOT NULL,
titulo VARCHAR(150) NOT NULL,
autor  VARCHAR(120) NOT NULL,
data_lancamento DATE NOT NULL  

);

USE biblioteca;
CREATE TABLE atendimentos(
id INT PRIMARY KEY AUTO_INCREMENT,
id_funcionario INT NOT NULL,
id_aluno INT NOT NULL,
id_livro INT NOT NULL,
data_atendimento DATE NOT NULL,
data_locacao DATE NOT NULL ,
CONSTRAINT fk_atendimentos_funcionarios FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionarios),
CONSTRAINT fk_atendimentos_alunos FOREIGN KEY (id_aluno) REFERENCES alunos(id_alunos),
CONSTRAINT fk_atendimentos_livros FOREIGN KEY (id_livro) REFERENCES livros(id_livros)    
);


SHOW COLUMNS FROM  atendimentos;
