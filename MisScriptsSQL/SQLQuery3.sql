
CREATE VIEW Vista_VerComProv AS
SELECT c.ComID, p.ProPK, c.ComNom , p.ProNom, c.Tamano FROM comunidades as c
inner join provincias as p
on c.ComID = p.ProAutoFK