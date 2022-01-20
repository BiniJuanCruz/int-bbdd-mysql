show databases;
use comercioIT;
show tables;

/*TIPO DE DATO ENUM:
		- Sólo puede contener un valor.
		- Se puede definir hasta 65.535 valores distintos.
        - Si se permiten valores null, éste será el valor predeterminado; 
        si no se define un valor predeterminado con Deafult, sera el primer valor de la lista.
        - Cada valor de la lista es numerado con un índice (comenzando en 1).*/
-- CREAMOS TABLA MEDIDA
create table Medida 

	(
		medida enum ('pequeño', 'mediano', 'grande') 
        not null default 'mediano'
        
	);
show tables;
describe Medida;