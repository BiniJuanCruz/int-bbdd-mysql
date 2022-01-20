
show databases;

use laboratorio_mod01;

show tables;
describe facturas;

/*MODIFICAR TABLA FACTURAS*/

alter table facturas change clientID idClient int;
alter table facturas change articuloID idArticulo int;

describe facturas;

-- Asignacion de restricciones

alter table facturas add monto double unsigned; /* Para agregar la restriccion unsigned debemos especificar
												el tipo de dato tambien, por más que no sea lo que vamos a modificar */
                                                
/* MODIFICAR TABLA ARTICULOS */
-- Cambiar nombre de campo 

describe articulos;
alter table articulos change articuloID idArticulos int; /* Para cambiar el nombre de columna debemos espeficiar el tipo de dato */

-- Modificar tipo de dato

alter table articulos modify nombre varchar(75);

-- Modificar restricciones 

alter table articulos add stock int unsigned not null;

/*MODICAR TABLA CLIENTES*/
describe clientes;
alter table clientes 
				change clienteID idCliente int(11),
                modify nombre varchar(35),
                modify apellido varchar(35),
                change comentarios observaciones varchar(255);

describe clientes;
