CREATE DATABASE agenda CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;    
USE agenda;

CREATE TABLE contato(
id_contato INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
endereco VARCHAR(150) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL 
);

/*CREATE TABLE fornecedor(
id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
cnpj VARCHAR(20) NOT NULL

); não inicializar esta tabela ainda */