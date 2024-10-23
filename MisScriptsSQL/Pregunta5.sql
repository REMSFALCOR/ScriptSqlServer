/*
5. Crea una consulta que ordene alfabéticamente las provincias millonarias en habitantes.
*/
SELECT TOP(5) * FROM provincias 
SELECT TOP(5) * FROM comunidades 

SELECT p.ProNom, p.Poblacion
FROM provincias as p
where p.Poblacion >= 1000000
order by P.ProNom asc