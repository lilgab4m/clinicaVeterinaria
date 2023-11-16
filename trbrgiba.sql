-- Atividade back and  Gabriel Dias
USE ClinicaVeterinaria;

-- Questão 1

SELECT*
FROM Animal;

UPDATE Animal
SET alergico ='1'
WHERE CodAnimal = 3;

-- Questão 2

SELECT*
FROM Cliente;

INSERT INTO Cliente(Nome, Endereco, Celular, Telefone, CPF) 
VALUES ('Diaz', 'Rua Dezesseis, 123 - Vila Vergalhão', '11932431265', '1144463223', '78890012764');


SELECT*
FROM Animal;

INSERT INTO Animal(Nome, Tipo, Raca, Idade, Alergico, CodCliente) 
VALUES ('Dumbi', 'Camelo', 'Camelo', 03, 0,  7);


-- Questão 3 

SELECT*
FROM Animal ;

DELETE FROM Animal 
WHERE CodCliente = '5';


-- Questão 4

SELECT*
FROM Cliente;


SELECT*
FROM Cliente;

SELECT*
FROM Veterinario;


SELECT*
FROM Animal;


SELECT*
FROM GrandePorte ;


SELECT*
FROM Consulta; 


INSERT INTO  Consulta( CodAnimal, DataHoraConsulta) 
VALUES ( 1, '2019-11-16 13:00');


-- Questão 5

SELECT*
FROM Veterinario;

INSERT INTO Veterinario(Nome, CRMV, Endereco, Telefone, Celular) 
VALUES ('Paulo','98554','Rua Martinica 54 - João Ramalho','1146652398','15996586512');

    
    -- Questao 6


SELECT*
FROM Veterinario;

UPDATE Veterinario
SET Celular = '11996587412'
WHERE Nome = 'Rodolfo';

-- Questão 7
DELETE FROM Cliente
WHERE CodCliente = '3';

DELETE FROM Cliente
WHERE CodCliente = '7';

-- Questão 8

INSERT INTO Cliente(Nome, Endereco, Celular, Telefone, CPF)
VALUES ('Adoção', 'Rua Vinte e Dois, 91 - Vila Verde', '21675330110', '1234543210', '99295885777');

INSERT INTO Animal(Nome, Tipo, Raca, Idade, Alergico, CodCliente)
VALUES ('loud', 'Gato', 'Persa da loud', 2, 0, 10);

-- Questão 9
UPDATE Consulta
SET DataHoraConsulta = '2019-10-19 10:28'
WHERE CodConsulta = '1';

UPDATE Consulta
SET CRMV = '45689'
WHERE CodConsulta = '1';

-- Questão 10
UPDATE Animal
SET CodCliente = 7
WHERE CodAnimal = 8