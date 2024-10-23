/*
2. Crea una consulta para obtener, Solamente, la población total de España.
*/
Use Territorios

select sum(p.Poblacion) as Total_Habitantes  
from Comunidades as c inner join provincias p
on c.ComID = p.ProAutoFK



select c.ComNom as Comunidad, p.ProNom as Provincia , p.Poblacion as habitantes   --  c.comID as id,  , p.ProPK as idP 
from DBO.Comunidades as c inner join DBO.provincias p
on c.ComID = p.ProAutoFK
where p.ProAutoFK IN (select p1.ProAutoFK from DBO.provincias p1
where p1.Poblacion>=1000000)
Order By c.ComNom