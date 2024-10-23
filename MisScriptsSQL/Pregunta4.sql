/*
4. Crea una consulta que muestre el número de provincias que tiene cada una de las comunidades autónomas que terminan con las letras “de”

comunidad numProv
*/

select c.ComNom, PrHb.TotalProv 
from comunidades as c inner join (
SELECT p.ProAutoFK as idCom, COUNT(p.ProPK) as TotalProv
FROM provincias as p inner join comunidades as c1
on p.ProAutoFK = c1.ComID
group by p.ProAutoFK
--order by P.ProAutoFK asc
) as PrHb 
on c.ComID = PrHb.idCom
