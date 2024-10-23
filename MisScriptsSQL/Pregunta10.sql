/*
10. Crea una consulta que ordene alfabéticamente las provincias millonarias en las filas. 
La consulta mostrará una columna por cada comunidad autónoma. 
Se mostrará la población de la provincia en su comunidad autónoma.
*/
USE Territorios

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


SELECT p.ProNom AS PROVINCIA, 
p.Poblacion AS POBLACION, 
c.ComNom AS COMUNIDAD
FROM provincias AS p
INNER JOIN Comunidades AS c ON c.ComID = p.ProAutoFK
WHERE p.Poblacion > 1000000




declare @cols as varchar(1000)
SELECT @cols = STRING_AGG(QUOTENAME('ProNom'),',')  --'character_string' [ , 'quote_character' ]
FROM (select distinct c.ComNom from comunidades as c
inner join provincias as p
on p.ProAutoFK = c.ComID
where p.Poblacion > 1000000) as SourceTable;

begin
	set @cols = (select c.ComNom from comunidades as c)
	select @cols as Campo;
end;


set @MiCol = STRING_AGG((SELECT QUOTENAME(ProNom) from provincias), ',') AS Col
execute @MiCol

SELECT QUOTENAME('abcdef', '()');



select * from (SELECT STRING_AGG(CONVERT(NVARCHAR(max),ProNom),',') AS Camp 
               FROM provincias) as campos


SELECT c.ComID, p.ProNom, STRING_AGG (p.Poblacion, ',') as PtNm
FROM dbo.comunidades AS c
LEFT JOIN dbo.provincias AS p
    ON c.ComID = p.ProAutoFK
GROUP BY c.ComID, p.ProNom;
GO

SELECT p.ProNom, STRING_AGG (p.Poblacion, ',') as Poblacion
FROM dbo.comunidades AS c
LEFT JOIN dbo.provincias AS p
    ON c.ComID = p.ProAutoFK
GROUP BY  p.ProNom;
GO


SELECT c.ComNom, p.Poblacion, STRING_AGG (p.ProNom, ',') as Provicia
FROM dbo.comunidades AS c
LEFT JOIN dbo.provincias AS p
    ON c.ComID = p.ProAutoFK
GROUP BY  c.ComNom, p.Poblacion;


select COLUMN_NAME
  from INFORMATION_SCHEMA.COLUMNS
 where TABLE_SCHEMA = 'dbo'
   and TABLE_NAME = 'comunidades'
 order by ORDINAL_POSITION