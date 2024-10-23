/*
6. Crea una consulta que muestre los nombres de las 5 provincias con menor población
*/

SELECt TOP (5)* FROM provincias
SELECt TOP (5)* FROM comunidades

SELECT TOP (5) p.ProNom, p.Poblacion
FROM provincias as p
order by P.Poblacion asc