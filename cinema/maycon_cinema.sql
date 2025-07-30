CREATE DATABASE cinema CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE cinema;
CREATE TABLE filmes(
id_filmes INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
duracao TIME NOT NULL,
classificacao VARCHAR(3) NOT NULL 
)ENGINE=InnoDB;

CREATE TABLE salas(
id_salas INT PRIMARY KEY AUTO_INCREMENT,
assentos VARCHAR(120) NOT NULL,
numero VARCHAR(2) NOT NULL,
id_filmes INT NOT NULL,
CONSTRAINT fk_salas_filmes FOREIGN KEY(id_filmes) REFERENCES filmes(id_filmes)  
);

-- CHAVE ESTRANGEIRA id_filmes

CREATE TABLE sessao(
id_sessao INT PRIMARY KEY AUTO_INCREMENT,
horario_inicio TIME NOT NULL,
horario_termino TIME NOT NULL,
id_salas INT NOT NULL,
CONSTRAINT fk_sessao_salas FOREIGN KEY (id_salas) REFERENCES salas(id_salas)
); 

CREATE TABLE ingresso(
id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
id_funcionario INT NOT NULL,
id_cliente INT NOT NULL,
numero_assento INT NOT NULL,
tipo ENUM('MEIA','INTEIRA') NOT NULL,
horario_compra TIME NOT NULL,
valor  DECIMAL NOT NULL,
id_salas INT NOT NULL,
CONSTRAINT fk_ingresso_salas FOREIGN KEY (id_salas) REFERENCES salas(id_salas)  
); 

CREATE TABLE registros(
id_registros INT PRIMARY KEY AUTO_INCREMENT,
horario_registro TIME NOT NULL,
id_sessao INT NOT NULL, 
id_filmes INT NOT NULL,
CONSTRAINT fk_registros_sessao FOREIGN KEY (id_sessao) REFERENCES sessao(id_salas),
CONSTRAINT fk_registros_filmes FOREIGN KEY (id_filmes) REFERENCES filmes(id_filmes)

); 
