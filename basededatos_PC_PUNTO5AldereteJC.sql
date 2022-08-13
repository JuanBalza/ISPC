CREATE DATABASE peluqueria_canina;
DROP SCHEMA peluqueria_canina;
use peluqueria_canina;

CREATE TABLE Dueno
(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Teléfono int,
Dirección varchar (25),
CONSTRAINT DNI PRIMARY KEY (DNI)
);

CREATE TABLE Perro 
(
Id_Perro int,
Nombre varchar (25),
Fecha_nac date ,
Sexo varchar(25),
DNI_Dueno int,
CONSTRAINT id_Perro PRIMARY KEY (Id_Perro),
CONSTRAINT f_dni FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial
(
Id_Historial int,
Fecha date ,
Perro int,
Descripción text,
Monto float,
CONSTRAINT Id_historial PRIMARY KEY (Id_Historial),
CONSTRAINT f_perro FOREIGN KEY (Perro) REFERENCES Perro (Id_Perro) 
);


SELECT dueno.Nombre "nombre_dueño" ,Apellido "apellido_dueño",perro.Nombre"nombre_perro",sexo
FROM dueno JOIN perro
on dueno.DNI = perro.DNI_Dueno
where dueno.Nombre = "Pedro";

