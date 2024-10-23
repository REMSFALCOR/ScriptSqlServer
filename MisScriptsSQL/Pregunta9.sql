/*
9. Crea una consulta que muestre los nombres de las comunidades autónomas ordenada descendentemente por el número de sus
provincias cuya población está entre 700 000 y 800 000 habitantes.
*/
--Antes
select c.comID as id, c.ComNom as Comunidad, p.ProPK as idP , p.ProNom as Provincia , p.Poblacion as habitantes  
from DBO.Comunidades as c inner join DBO.provincias p
on c.ComID = p.ProPK
where p.ProAutoFK IN (select p1.ProAutoFK from DBO.provincias p1
where p1.Poblacion>=700000 and p1.Poblacion<=800000)
Order By c.ComNom

--Ahora
SELECT ProNom,
STRING_AGG(ProAutoFK ,',')  WITHIN GROUP ( ORDER BY ProAutoFK  ASC)  AS
Result FROM [provincias]
where Poblacion>=700000 and Poblacion<=800000
group by ProNom