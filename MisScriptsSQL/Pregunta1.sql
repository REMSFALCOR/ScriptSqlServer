/*
1. Crea una consulta para contar las provincias de Andalucía.
*/
SELECt TOP (5)* FROM provincias
SELECt TOP (5)* FROM comunidades

select  Count(p.ProPK)
from DBO.Comunidades as c inner join DBO.provincias p
on c.ComID = p.ProAutoFK
where c.ComNom = 'Cantabria' --Andalucía