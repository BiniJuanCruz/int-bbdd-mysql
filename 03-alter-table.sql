show databases;
use comercioIT;
drop table if exists clientes;
show tables;

create table clientes(NombreCliente varchar(30) not null primary key, cliente_id int(12) not null);

show tables;
describe clientes;

-- ALTER TABLE - Permite modificar la estructura de una tabla.

-- AGREGAR COLUMNAS A UNA TABLA
alter table clientes 
			add column Primera varchar(150) /* Agrega columna "Primera" como tipo de dato 
											cadena de texto con un maximo de 150 caracteres */ 
            null first, /* Ubica la nueva columna al principio de la tabla. */ 
			add column Segunda varchar(150)
			null after Primera,
            add column Comentarios int(120) null after NombreCliente;
            
describe clientes;
describe Productos;

-- CAMBIAR EL TIPO DE DATO DE COLUMNA 
alter table clientes modify comentarios varchar(20) null ;
describe clientes;

-- ELIMINAR COLUMNA 
alter table clientes drop column primera, drop column segunda;

describe clientes;

-- AGREGAR Y ELIMINAR RESTRICCIONES
alter table clientes
					drop primary key, 
					add primary key(cliente_id);

-- RENOMBRAR UNA TABLA
alter table Productos rename Articulos; -- alter table Productos to Articulos;

show tables;

-- CAMBIAR NOMBRE DE TABLA
alter table Articulos 
			change Stock 
            Disponibilidad int(6) not null;
            
describe Articulos;





