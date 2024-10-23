/*
3. Crea una consulta para mostrar en dos columnas las provincias de Galicia ordenadas por población en orden descendente.
*/
Use Territorios

select c.ComNom as Comunidad, p.ProNom as Provincia , p.Poblacion as habitantes   --  c.comID as id,  , p.ProPK as idP 
from DBO.Comunidades as c inner join DBO.provincias p
on c.ComID = p.ProAutoFK
where p.ProAutoFK IN (select p1.ProAutoFK from DBO.provincias p1
where p1.Poblacion>=1000000)
Order By c.ComNom
