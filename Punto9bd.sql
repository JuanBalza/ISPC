CREATE DATABASE peluqueria_canina;
use peluqueria_canina;

create table dueno (
dni int primary key not null,
nombre varchar (25),
apellido varchar (25),
direccion varchar (30)
);

create table perro (
id_perro int primary key not null,
nombre varchar (25),
fecha_nac date,
sexo varchar (10),
dni_dueno int, 
constraint f_dni foreign key (dni_dueno) references dueno (dni)
);

create table historial (
id_historial int primary key not null,
fecha date,
perro int,
descripcion varchar (50),
monto int,
constraint f_perro foreign key (perro) references perro (id_perro)
);

insert into dueno (dni, nombre, apellido, direccion)
values ('40318968', 'luciano', 'rinaudo', 'colon_123');

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno)
values ('0001', 'pedro', '2020-02-01', 'masculino', '40318968');

update dueno
set direccion = 'belgrano_333'
where direccion = 'colon_123';




