/*
7. Crea una consulta que muestre las provincias con nombre de 7 letras cuya población 
sea 
mayor de 150 000 y menor de 200 000 habitante 
o que sea 
mayor de 900 000 y menor de 1 000 000 Habitante
*/

SELECT p.ProAutoFK, p.ProNom 
FROM provincias as p 
where LEN(p.ProNom)=7 and ((p.Poblacion>150000 and p.Poblacion<150000) or (p.Poblacion>900000 and p.Poblacion<1000000)) 





EXEC sp_rename 'provincias', 'Poblacion', 'Tamano';

ALTER TABLE dbo.provincias
ADD poblacion int;


EXEC sp_rename 
'provincias.ProPoblac', -- nombre actual de la Columna
'Poblacion', -- nombre nuevo de la columna
'Column'

ALTER TABLE dbo.provincias 
DROP COLUMN ProPoblac;
GO

ALTER TABLE MiTabla
DROP COLUMN NuevaColumna;


