USE MASTER;

GO

DROP DATABASE IF EXISTS Guia2_1_Ejercicio2_DB;

GO

CREATE DATABASE Guia2_1_Ejercicio2_DB;

GO

USE Guia2_1_Ejercicio2_DB;

CREATE TABLE Cursos
(Id INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(100) NOT NULL);

CREATE TABLE Alumnos
(Id INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(100) NOT NULL,
Id_Curso INT NOT NULL,
CONSTRAINT UQ_Alumnos_Nombre_Id_Curso UNIQUE (Nombre,Id_Curso),
CONSTRAINT FK_Id_Curso FOREIGN KEY (Id_Curso) REFERENCES Cursos(Id) ON DELETE CASCADE);

GO

INSERT INTO Cursos(Nombre)
VALUES
('Matemática'),
('Programación'),
('Literatura'),
('Mecánica Aplicada'),
('Cocina'),
('Carpintería'),
('Reparación de PC'),
('Instalación Eléctricas Domiciliarias');

INSERT INTO Alumnos(Nombre,Id_Curso)
VALUES
('Luisa',1),--Luisa en Matemática
('Ernesto',2),--Ernesto en Programación
('Lucrecia',1),--Lucrecia en Matemática
('Ricardo',2),--Ricardo en Programación
('Leonel',2),--Leonel en Programación
('Liliana',1),--Liliana en Matemática
('Cecilia',1),--Cecilia en Matemática
('Eduardo',8);--Eduardo en Instalación Eléctricas Domiciliarias
