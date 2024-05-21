CREATE DATABASE CidadesAlunos;
USE CidadesAlunos;
CREATE TABLE Cidades (
    id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    populacao INT
);

CREATE TABLE Alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE,
    cidade_id INT,
    FOREIGN KEY(cidade_id) REFERENCES Cidades(id)
);

INSERT INTO Cidades VALUES 
(1, 'Serra da Saudade', 42632),
(2, 'São Pedro', 13820),
(3, 'Campinas', 27383),
(4, 'Rio de Janeiro', 19138),
(5, 'São Paulo', 31394);

INSERT INTO Alunos VALUES
(1, 'Felipe Fallsto', '1724-04-22', 4),
(2, 'Kevin Duarte', '1912-06-23', 3),
(3, 'Gabriel Ponchet', '2002-01-01', 1),
(4, 'Lucas Eduardo', '1991-08-12', 3),
(5, 'Paulo Plinio', '2090-01-08', NULL),
(6, 'Mario Castro', '1978-05-28', 4),
(7, 'Maria Eduarda', '1982-10-15', 3),
(8, 'Ana Clara', '2010-02-06', NULL),
(9, 'Luan Lima', '2007-07-12', 3),
(10, 'Igor Goes', '2000-11-20', 1),
(11, 'João Gatão', '1973-12-05', 4),
(12, 'Pedro Henrique', '1982-09-12', 1);

-- Consulta INNER JOIN
SELECT * 
FROM Alunos INNER 
JOIN Cidades 
ON Cidades.id = Alunos.cidade_id;

-- Consulta JOIN
SELECT * 
FROM Alunos 
JOIN Cidades ON Cidades.id = Alunos.cidade_id;

-- Consulta LEFT JOIN
SELECT * 
FROM Alunos 
LEFT JOIN Cidades ON Cidades.id = Alunos.cidade_id;

-- Consulta RIGHT JOIN
SELECT * 
FROM Alunos RIGHT JOIN 
Cidades ON Cidades.id = Alunos.cidade_id;

-- Consulta para selecionar todos os alunos
SELECT * 
FROM Alunos;