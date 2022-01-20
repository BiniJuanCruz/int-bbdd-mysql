drop database if exists laboratorio_mod01;
create database laboratorio_mod01;
use laboratorio_mod01;

create table facturas
(
	letra char ,
    numero int primary key,
    clientID int,
    articuloID int,
    fecha date,
    monto double
);


create table articulos 
(
	articuloID int primary key,
    nombre varchar(50),
    precio double,
    stock int
);


create table clientes
(
	clienteID int primary key,
    nombre varchar(50),
    apellido varchar(50),
    cuit char(16),
    direccion varchar(50),
    comentarios varchar(50)
);
show databases;
show tables;
describe articulos;
describe clientes;
describe facturas;