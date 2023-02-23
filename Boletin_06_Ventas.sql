create database Boletin_05_Ventas;
use Boletin_05_Ventas;
drop table ventas;
drop table proyecto;
drop table pieza;
drop table proveedor;
CREATE TABLE proveedor (
	codpro VARCHAR(3),
	nompro VARCHAR(30) NOT NULL,
	status INT,
	ciudad VARCHAR(15),
	constraint codpro_pk PRIMARY KEY (codpro),
	CONSTRAINT status_chk CHECK (status >=1 AND status <=10)
);

CREATE TABLE pieza (
	codpie VARCHAR(3),
	nompie VARCHAR(10) NOT NULL,
	color VARCHAR(10),
	peso DECIMAL(5,2),
	ciudad VARCHAR(15),
	CONSTRAINT codpie_pk PRIMARY KEY (codpie),
	CONSTRAINT peso_chk CHECK (peso > 0 AND peso <= 100)
); 

CREATE TABLE proyecto (
codpj VARCHAR(3),
nompj VARCHAR(20) NOT NULL,
ciudad VARCHAR(15),
CONSTRAINT codpj_pk PRIMARY KEY (codpj)
);

CREATE TABLE ventas (
codpro VARCHAR(3),
codp VARCHAR(3),
codpj VARCHAR(3),
cantidad INT(4),
CONSTRAINT clave_pk PRIMARY KEY (codpro,codp,codpj),
CONSTRAINT codpro_fk FOREIGN KEY (codpro) REFERENCES proveedor(codpro),
CONSTRAINT codpie_fk FOREIGN KEY (codp) REFERENCES pieza(codpie),
CONSTRAINT codpj_fk FOREIGN KEY (codpj) REFERENCES proyecto(codpj)
);

INSERT INTO proveedor 
VALUES ('S1', 'Jose Fernandez', 2, 'Madrid');

INSERT INTO proveedor 
VALUES ('S2', 'Manuel Vidal', 1, 'Londres');

INSERT INTO proveedor 
VALUES ('S3', 'Luisa Gomez', 3, 'Lisboa');

INSERT INTO proveedor 
VALUES ('S4', 'Pedro Sanchez', 4, 'Paris');

INSERT INTO proveedor 
VALUES ('S5', 'Maria Reyes', 5, 'Roma');

INSERT INTO pieza
VALUES ('P1', 'Tuerca', 'Gris', 2.5, 'Madrid');

INSERT INTO pieza
VALUES ('P2', 'Tornillo', 'Rojo', 1.25, 'Paris');

INSERT INTO pieza
VALUES ('P3', 'Arandela', 'Blanco', 3, 'Londres');

INSERT INTO pieza
VALUES ('P4', 'Clavo', 'Gris', 5.5, 'Lisboa');

INSERT INTO pieza
VALUES ('P5', 'Alcataya', 'Blanco', 10, 'Roma');

INSERT INTO proyecto
VALUES ('J1', 'Proyecto 1', 'Londres');

INSERT INTO proyecto
VALUES ('J2', 'Proyecto 2', 'Londres');

INSERT INTO proyecto
VALUES ('J3', 'Proyecto 3', 'Paris');

INSERT INTO proyecto
VALUES ('J4', 'Proyecto 4', 'Roma');


INSERT INTO ventas
VALUES ('S1', 'P1', 'J2', 100);

INSERT INTO ventas
VALUES ('S1', 'P1', 'J3', 500);

INSERT INTO ventas
VALUES ('S1', 'P2', 'J1', 200);

INSERT INTO ventas
VALUES ('S2', 'P2', 'J2', 15);

INSERT INTO ventas
VALUES ('S4', 'P2', 'J3', 1700);

INSERT INTO ventas
VALUES ('S1', 'P3', 'J1', 800);

INSERT INTO ventas
VALUES ('S5', 'P3', 'J2', 30);

INSERT INTO ventas
VALUES ('S1', 'P4', 'J1', 10);

INSERT INTO ventas
VALUES ('S1', 'P4', 'J3', 250);

INSERT INTO ventas
VALUES ('S2', 'P5', 'J2', 300);

INSERT INTO ventas
VALUES ('S2', 'P2', 'J1', 4500);

INSERT INTO ventas
VALUES ('S3', 'P1', 'J1', 90);

INSERT INTO ventas
VALUES ('S3', 'P2', 'J1', 190);

INSERT INTO ventas
VALUES ('S3', 'P5', 'J3', 20);

INSERT INTO ventas
VALUES ('S4', 'P5', 'J1', 15);

INSERT INTO ventas
VALUES ('S4', 'P1', 'J3', 1500);

INSERT INTO ventas
VALUES ('S1', 'P1', 'J1', 150);

INSERT INTO ventas
VALUES ('S1', 'P4', 'J4', 290);

INSERT INTO ventas
VALUES ('S1', 'P2', 'J4', 175);
/*INICIO EJERCICIOS*/
/*1. Obtener todos los atributos de todos los proyectos.*/
/*2. Obtener todos los atributos de todos los proyectos desarrollados en Londres.*/
/*3. Obtener los códigos de las piezas suministradas por el proveedor s2, ordenados.*/
/*4. Obtener los códigos de los proveedores del proyecto j1, ordenados.*/
/*5. Obtener todas las ocurrencias p.color, p.ciudad eliminando los pares duplicados.*/
/*6. Obtener los códigos de los cargamentos en los que la cantidad no sea nula.*/
/*7. Obtener códigos de los proyectos y ciudades en las que la ciudad del proyecto tenga una 'o' en la segunda letra.*/
/*8. Obtener un listado ascendente de los nombres de las piezas con más de 5 letras.*/
/*9. Obtener nombres abreviados de proyectos tomando sus primeras 3 letras.*/
/*10. Obtener los tres últimos caracteres de los nombres de proveedores por orden alfabético.*/
/*11. Hallar cuántas piezas distintas existen.*/
/*12. Hallar cuántas piezas distintas existen dando nombre a la columna resultante Número.*/
/*13. Obtener el número total de proyectos suministrados por el proveedor sl.*/
/*14. Obtener la cantidad total de piezas p1 suministrada por s1.*/
/*15. Obtener la cantidad media de piezas suministradas, cantidad máxima y mínima suministrada.*/
/*16. Obtener los cargamentos en los que la cantidad de piezas esté entre 300 y 750 inclusive.*/
/*17. Construir una consulta que devuelva cod_p y VERDADERO si en la tabla piezas el color de la pieza no es ni azul ni gris.*/
/*18. Añade una nueva columna llamada fecha que indique la fecha de adquisición de una pieza por proveedor y proyecto.*/
/*19. Modificar la fecha de adquisición de todas las piezas p2 a la fecha actual.*/
/*20. Se desea visualizar la fecha con formato del ejemplo ’11-NOV-2002’.*/
/*21. Modificar la fecha de adquisición en los que participan los proyectos j1 y j2 a la fecha 12-11-2001 .*/
/*22. Construir una lista ordenada de todas las ciudades en las que al menos resida un suministrador, una pieza o un proyecto.*/
/*23. Obtener todas las posibles combinaciones entre piezas y proveedores.*/
/*24. Obtener todos los posibles tríos de código de proveedor, código de pieza y código de proyecto en los que el proveedor, pieza y proyecto estén en la misma ciudad.*/
/*25. Obtener los códigos de proveedor, de pieza y de proyecto de aquellos cargamentos en los que proveedor, pieza y proyecto estén en la misma ciudad.*/
/*26. Obtener todos los posibles tríos de código de proveedor, código de pieza y código de proyecto en los que el proveedor, pieza y proyecto no estén todos en la misma ciudad.*/
/*27. Obtener todos los posibles tríos de código de proveedor, código de pieza y código de proyecto en los que el proveedor, pieza y proyecto no estén ninguno en la misma ciudad.*/
/*28. Obtener los códigos de las piezas suministradas por proveedores de Londres.*/
/*29. Obtener los códigos de las piezas suministradas por proveedores de Londres a proyectos en Londres.*/
/*30. Obtener todos los pares de nombres de ciudades en las que un proveedor de la primera sirva a un proyecto de la segunda.*/
/*31. Obtener códigos de piezas que sean suministradas a un proyecto por un proveedor de la misma ciudad del proyecto.*/
/*32. Obtener códigos de proyectos que sean suministrados por un proveedor de una ciudad distinta a la del proyecto. Visualizar el código de proveedor y el del proyecto.*/
/*33. Obtener todos los pares de códigos de piezas suministradas por el mismo proveedor.*/
/*34. Obtener todos los pares de códigos de piezas suministradas por el mismo proveedor. (eliminar pares repetidos)*/
/*35. Obtener para cada pieza suministrada a un proyecto, el código de pieza, el código de proyecto y la cantidad total correspondiente.*/
/*36. Obtener los códigos de proyectos y los códigos de piezas en los que la cantidad media suministrada a algún proyecto sea superior a 320.*/
/*37. Obtener un listado ascendente de los nombres de todos los proveedores que hayan suministrado una cantidad superior a 100 de la pieza p1. Los nombres deben aparecer en mayúsculas.*/
/*38. Obtener los nombres de los proyectos a los que suministra s1.*/
/*39. Obtener los colores de las piezas suministradas por s1.*/
/*40. Obtener los códigos de las piezas suministradas a cualquier proyecto de Londres.*/
/*41. Obtener los códigos de los proveedores con estado menor que s1.*/
/*42. Obtener los códigos de los proyectos que usen la pieza pl en una cantidad media mayor que la mayor cantidad en la que cualquier pieza sea suministrada al proyecto j1.*/
/*43. Obtener códigos de proveedores que suministren a algún proyecto la pieza p1 en una cantidad mayor que la cantidad media en la que se suministra la pieza p1 a dicho proyecto.*/
/*44. Obtener los códigos de los proyectos que usen al menos una pieza suministrada por s1.*/
/*45. Obtener los códigos de los proveedores que suministren al menos una pieza suministrada al menos por un proveedor que suministre al menos una pieza roja.*/
/*46. Obtener los códigos de las piezas suministradas a cualquier proyecto de Londres usando EXISTS.*/
/*47. Obtener los códigos de los proyectos que usen al menos una pieza suministrada por s1 usando EXISTS.*/
/*48. Obtener los códigos de los proyectos que no reciban ninguna pieza roja suministrada por algún proveedor de Londres.*/
/*49. Obtener los códigos de los proyectos suministrados únicamente por s1.*/
/*50. Obtener los códigos de las piezas suministradas a todos los proyectos en Londres.*/
/*51. Obtener los códigos de los proveedores que suministren la misma pieza todos a los proyectos.*/
/*52. Obtener los códigos de los proyectos que reciban al menos todas las piezas que suministra s1.*/
/*53. Cambiar el color de todas las piezas rojas a naranja.*/
/*54. Borrar todos los proyectos para los que no haya cargamentos.*/
/*55. Borrar todos los proyectos en Roma y sus correspondientes cargamentos.*/
/*56. Insertar un nuevo suministrador s lo en la tabla S. El nombre y la ciudad son 'White'y 'New York' respectivamente. El estado no se conoce todavía.*/
/*57. Construir una tabla conteniendo una lista de los códigos de las piezas suministrada.s a proyectos en Londres o suministradas por un suministrador de Londres.*/
/*58. Construir una tabla conteniendo una lista de los códigos de los proyectos de Londres o que tengan algún suministrador de Londres.*/
/*59. Listar las tablas y secuencias definidas por el usuario ZEUS.*/