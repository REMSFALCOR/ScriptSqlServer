/*
8. Crea una consulta que devuelva un �nico valor con la poblaci�n de las provincias de las comunidades aut�nomas
que empiezan por M. La celda resultada debe ser lo suficientemente ancha c�mo para que el t�tulo �Poblaci�n de las
provincias de las comunidades aut�nomas que empiezan por M� sea totalmente visible. EL valor debe mostrarse con los
puntos de millar visibles y sin decimales.
*/

select c.comID as id, c.ComNom as Comunidad, p.ProPK as idP , p.ProNom as Provincia , p.Poblacion as habitantes  
from DBO.Comunidades as c inner join DBO.provincias p
on c.ComID = p.ProAutoFK
where  c.ComNom like 'M%' -- a l
Order By c.ComNom
