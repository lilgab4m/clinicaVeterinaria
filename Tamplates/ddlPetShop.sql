-- -- Apaga e recria o banco de dados
DROP DATABASE IF EXISTS PetShop;

-- Criação do banco de dados PetShop
CREATE DATABASE PetShop;

-- Uso do banco de dados PetShop
USE PetShop;

-- Mostrando Tables
/*
SHOW TABLES;
Describe Cliente;
 */
 
-- Ciando a tabela Cliente
CREATE TABLE Cliente (
	CodCliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(70) NOT NULL,
    Senha VARCHAR(20) NOT NULL,
    Telefone CHAR(11)
);

-- Criação de um indice unico no campo Senha
CREATE UNIQUE INDEX IDX_Senha on
	Cliente(Senha);
    
-- Criação de um índice no campo Nome
CREATE INDEX IDX_Nome ON
	Cliente(Nome);
    
-- Criação de um índice no campo Email
CREATE UNIQUE INDEX IDX_Email ON
	Cliente(Email);
    
-- Ciação da tabela Animal
CREATE TABLE Animal (
	CodAnimal INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CodCliente INT,
    Nome VARCHAR(20) NOT NULL,
	Tipo CHAR(50),
    Raca VARCHAR(20) NOT NULL,
    Idade CHAR(2) NOT NULL,
    Observacao TEXT
);

-- Criação de um índice sobre o campo Tipo
CREATE INDEX IDX_Tipo ON
	Animal(Tipo);

-- Criação da relação (Chave Estrangeira) Cliente_Animal
ALTER TABLE Animal ADD
	CONSTRAINT FK_Cliente_Animal FOREIGN KEY(CodCliente)
	REFERENCES Cliente(CodCliente);
    
CREATE TABLE Veterinario(
    CRMV CHAR (5) NOT NULL PRIMARY KEY,
	Nome VARCHAR (50) NOT NULL,
    Endereco VARCHAR(100),
    Telefone CHAR(10),
    Celular CHAR(11)
);

-- Criação de um índice unico sobre o campo CRMV
CREATE UNIQUE INDEX IDX_CRMV ON
	Veterinario(CRMV);

-- Criação de um índice sobre o campo Nome
CREATE INDEX IDX_Nome ON
	Veterinario(Nome);

CREATE TABLE Consulta(
	CodConsulta INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CRMV VARCHAR (5) NOT NULL,
    CodAnimal INT NOT NULL,
    DataHoraConsulta DATETIME,
    Valor DOUBLE, 
    Diagnostico TEXT
);

-- Criação da relação (Chave Estrangeira) Veterinario_Consulta 
ALTER TABLE Consulta ADD
	CONSTRAINT FK_Veterinario_Consulta FOREIGN KEY (CRMV)
    REFERENCES Veterinario(CRMV);

-- Criação da relação (Chave Estrangeira) Animal_Consulta
ALTER TABLE Consulta ADD
	CONSTRAINT FK_Animal_Consulta FOREIGN KEY (CodAnimal)
    REFERENCES Animal(CodAnimal);
    
-- Criação da tabela Hotel
CREATE TABLE Hotel (
	CodEstadia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CodCliente INT NOT NULL,
    CodAnimal INT NOT NULL,
    DataEntrada DATETIME,
    DataSaida DATETIME
);
    
-- Criação da relação (Chave Estrangeira) Hotel_Cliente
ALTER TABLE Hotel ADD
	CONSTRAINT FK_Hotel_Cliente FOREIGN KEY (CodCliente)
    REFERENCES Cliente(CodCliente);
    
-- Criação da relação (Chave Estrangeira) Hotel_Animal
ALTER TABLE Hotel ADD
	CONSTRAINT FK_Hotel_Animal FOREIGN KEY (CodAnimal)
    REFERENCES Animal(CodAnimal);