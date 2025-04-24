CREATE DATABASE atividade_PW2_BD2;

USE atividade_PW2_BD2; 



CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    dataNasc DATE NOT NULL,
    CPF VARCHAR (255),
    CNPJ VARCHAR (255),	
	RazaoSocial VARCHAR (255),
    email VARCHAR (255) NOT NULL,
    senha VARCHAR (255) NOT NULL
);

INSERT INTO usuario (nome, dataNasc, CPF, CNPJ, RazaoSocial, email, senha)

CREATE TABLE login(
	id_login INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    email VARCHAR (255) NOT NULL,
    CONSTRAINT fk_usuario_login FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

ALTER TABLE login ADD COLUMN hash_senha VARCHAR (255);

SELECT * FROM login;

SELECT
	usuario.email, login.email
FROM
	usuario
INNER JOIN
	login
ON 
	usuario.id_usuario = login.id_login;


