-- A. Crear Base de Datos y Tablas según Modelo Relacional.
CREATE DATABASE peluqueria_canina;

use peluqueria_canina;

CREATE TABLE Dueno 
(
    DNI int not null PRIMARY KEY,
    Nombre varchar(20) not null,
    Apellido varchar(20) not null,
    Telefono varchar(15) not null,
    Direccion varchar(40)
);

CREATE TABLE Perro
(
    ID_Perro int not null AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(20) not null,
    Fecha_nac date,
    Sexo varchar(1) not null,
    DNI_dueno int,
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)    
);

CREATE TABLE Historial (
    ID_Historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(80),
    Monto INT NOT NULL,
    FOREIGN KEY (perro)
        REFERENCES Perro (ID_perro)
);

-- B. Realizar puntos 1 y 2
-- 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
-- 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
	('1', 'Violeta', '2020-07-05', 'H', '22385478');
    
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES
	('22385478', 'Claudia', 'Aguirre', '3541', 'Villa de Las Rosas');

-- C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
-- 8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
INSERT INTO Historial VALUES
	('1', '2022-08-13', '10', 'Corte', '1000');
    
SELECT * FROM Historial
	WHERE Perro=10