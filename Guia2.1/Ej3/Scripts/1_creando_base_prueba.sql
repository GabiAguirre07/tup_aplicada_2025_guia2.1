USE MASTER;

GO

DROP DATABASE IF EXISTS Guia2_1_Ejercicio3_DB;

GO

CREATE DATABASE Guia2_1_Ejercicio3_DB;

GO

USE Guia2_1_Ejercicio3_DB;

CREATE TABLE Localidades
(
  Id INT PRIMARY KEY IDENTITY(1,1),
  Nombre NVARCHAR(100) NOT NULL,
  Codigo_Postal INT NOT NULL
);

CREATE TABLE Alumnos
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Calle NVARCHAR(100) NOT NULL,
    Numero INT NOT NULL,
    Id_Localidad INT NOT NULL,
    CONSTRAINT FK_Alumnos_Localidades FOREIGN KEY (Id_Localidad) REFERENCES Localidades(Id)
);

GO

INSERT INTO Localidades(Nombre,Codigo_Postal)
VALUES
('Paraná',3100),
('Hernandarias',3127),
('Hasenkamp',3124);

INSERT INTO Alumnos(Nombre,Calle,Numero,Id_Localidad)
VALUES
('Luisa','Almafuerte',1033,1),--Luisa en Paraná
('Ernesto','Federación',456,2),--Ernesto en Hernandarias
('Lucrecia','Las Lechiguanas',50,1),--Lucrecia en Paraná
('Ricardo','Provincias Unidas',864,2),--Ricardo en Hernandarias
('Leonel','Sarmiento',200,2),--Leonel en Hernandarias
('Liliana','Buenos Aires',100,1),--Liliana en Paraná
('Cecilia','Victoria',146,1),--Cecilia en Paraná
('Eduardo','San Martín',33,3);--Eduardo en Hasenkamp