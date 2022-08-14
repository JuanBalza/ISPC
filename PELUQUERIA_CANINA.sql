DROP DATABASE PELUQUERIA_CANINA;

CREATE DATABASE PELUQUERIA_CANINA;

use PELUQUERIA_CANINA;

CREATE TABLE Dueno 
(
    DNI int NOT NULL PRIMARY KEY,
    Nombre varchar(50),
    Apellido varchar(50) NOT NULL,
    Telefono numeric,
    Direccion varchar(50)
);

CREATE TABLE Perro
(
    ID_Perro int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre varchar(50) NOT NULL,
    Fecha_nac date,
    Sexo varchar(1) NOT NULL,
    DNI_dueno int,
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)    
);

CREATE TABLE Historial
(
    ID_historial int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Fecha date NOT NULL,
    Perro int NOT NULL,
    Descripcion varchar (50),
    Monto int NOT NULL,
    FOREIGN KEY (perro) REFERENCES Perro (ID_perro)
);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
 values 
 (12123456, 'jimena', 'Luna', '4256523', 'caseros 3325'),
 (13123456, 'yamil', 'Pantaleon', '4266523', 'lisboa 123'),
 (14123456, 'jose', 'elsner', '4276523', 'belgrano 124'),
 (15123456, 'miguel', 'Canas', '4286523', 'san jose 23'),
 (16123456, 'pablo', 'reyes', '4296523', '24 de septiembre 3568'),
 (17123456, 'carlos', 'bernal', '4306523', 'rivadavia 12'),  
 (18123456, 'patricia', 'gimenez', '4316523', 'velez 123'); 
  
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno)
values
('Luna', '2008-11-26', 'M', 12123456),
('colita', '2010-01-12', 'M', 13123456),
('malena', '2002-02-23', 'M', 14123456),
('copito', '2021-02-23', 'H', 15123456),
('polaco', '2017-08-12', 'H', 16123456),
('negro', '2020-05-12', 'M', 17123456),
('clara', '2021-06-12', 'M', 18123456);

insert into Historial (Fecha, Perro, Descripcion, Monto) 
values 
('2020-12-01', 1, 'corte', 1200),
('2021-07-15', 1, 'corte', 1200),
('2017-10-20', 2, 'Lavado', 6000),
('2022-08-01', 2, 'Lavado y corte', 7200);


-- 2 - Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

 insert into Dueno (DNI, nombre, apellido, telefono, direccion) 
 values 
 (19123456, 'juan', 'olmedo', '480123456', '9 de julio 3131');
    
insert into Perro (nombre, fecha_nac, sexo, DNI_dueno)
values ('toto', '2022-08-11', 'M', 19123456);


-- 12  - Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
select * from Perro 
where Sexo="M" and Fecha_nac between "2020-01-01" and "2022-12-12"



