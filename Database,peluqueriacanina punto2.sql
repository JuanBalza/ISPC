CREATE DATABASE Peluqueriacanina;

use Peluqueriacanina;

CREATE TABLE Dueño
(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Teléfono varchar(25),
Dirección varchar (25),
CONSTRAINT Id_DNI PRIMARY KEY (DNI)
);

CREATE TABLE Perro 
(
Id_Perro int,
Nombre varchar (25),
Fecha_nac date,
Sexo varchar(25),
DNI_Dueño int,
CONSTRAINT id_Perro PRIMARY KEY (Id_Perro),
CONSTRAINT f_dni FOREIGN KEY (DNI_Dueño) REFERENCES Dueño (DNI)
);

CREATE TABLE Historial
(
Id_Historial int,
Fecha date,
Perro int,
Descripción text,
Monto int,
CONSTRAINT Id_historial PRIMARY KEY (Id_Historial),
CONSTRAINT f_perro FOREIGN KEY (Perro) REFERENCES Perro (Id_Perro) 
);

use Peluqueriacanina;

INSERT INTO Dueño (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES 
('42087410', 'Diego', 'Arias', '4531945', 'Las Palmas 85');

INSERT INTO Perro (Id_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueño) VALUES 
('001', 'Rex', '00-12-16', 'Macho', '42087410');

INSERT INTO Historial (Id_Historial, Fecha, Perro, Descripción, Monto) VALUES 
('1', '02-08-24', '45', 'Obejero Aleman', '4500');