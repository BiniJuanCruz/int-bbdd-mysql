
-- CREACION DE UNA BASE DE DATOS

create database comercioIT;

-- PONER EN USO LA BASE DE DATOS DEL SERVIDOR

use comercioIT;

-- Generamos una tabla con el nombre PRODUCTOS con 7 campos con sus correspondientes tipos de datos y modificadores:


-- CREACION DE UNA TABLA

create table Productos /* La sentencia CREATE TABLE creará una tabla 
						con las columnas(campos) que indiquemos antes. */
	-- Contenido de la tabla dividido en campos (columnas)
	(	
		/* CAMPO*/
        idProducto
        -- TIPO DE DATO - Entero
			INT(11) 
        
		-- RESTRICCIONES 
			unsigned  /* Esta columna no usara un byte para el signo(permitira almacenar solo números positivos). */
            not null  /* No permiten valores nulos. */
            auto_increment /* Aumentará su valor automáticamente. 
					Solo puede haber un campo de la tabla que tenga esta propiedad
					y este formar parte de PRIMARY KEY. */
            PRIMARY KEY, /* Cuando se especifica esta restricción el Motor de la base de datos
							exige la unicidad de los datos mediante la creación de un índice único para
                            las columnas de la clave principal.
                            Este indice también permite un acceso rápido a los datos cuando se utiliza 
                            la clave principal en las consultas. */
		/* CAMPO */
        Nombre  
        -- TIPO DE DATO - Almacenar una cadenar de texto y como parametro la longitud del dato
				varchar(50) 
		-- RESTRICCIONES
                not null, 
                
		/* CAMPO */       
		Precio 
        -- TIPO DE DATO - Número de coma flotante de precision doble.
			double,
		Marca varchar(30) not null,
        Categoria varchar(30) not null,
        Stock int(6) not null,
		Disponible boolean default false /* Inicia con un false como valor booleano por defecto */
		
	);

-- MOSTRAR TABLAS CREADAS

show tables;

-- MOSTRAR DESCRIPCION DE CAMPOS Y LA ESTRUCTURA DE FISICA DE LA TABLA

describe Productos;






