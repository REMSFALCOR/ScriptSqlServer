--las direcciones de las personas de facturacion de la spersonas de francia

select count(p.FirstName)
from [Person].[Person] as p

inner join [Person].[PersonPhone] as pp

on p.BusinessEntityID = pp.BusinessEntityID
inner join Person.PhoneNumberType as pnt
on pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID
where pnt.Name = 'Home'

select * from Person.PhoneNumberType



select * from Person.Address as ap
order by ap.City
--where ap.City ='France'

select * from Person.Person as p
order by p.EmailPromotion


select p.FirstName
from [Person].[Person] as p
inner join [Person].[PersonPhone] as pp
on p.BusinessEntityID = pp.BusinessEntityID
inner join Person.PhoneNumberType as pnt
on pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID
where pnt.Name = 'Home'

select p.FirstName
from Person.Person as p
inner join Person.BusinessEntity as be
on p.BusinessEntityID = be.BusinessEntityID
inner join Person.BusinessEntityAddress as bea
on be.BusinessEntityID = bea.BusinessEntityID
inner join Person.Address as a
on bea.AddressID = a.AddressID

where a.City = 'France'




SELECT * FROM Person.Address
SELECT * FROM Sales.Store
SELECT * FROM Sales.Customer
SELECT * FROM Sales.SalesPersonQuotaHistory
SELECT * FROM Sales.SalesReason
SELECT * FROM Sales.SalesPerson
SELECT * FROM Sales.SalesOrderHeader

SELECT * FROM Person.PhoneNumberType as pnt

SELECT * FROM Person.BusinessEntity

S.STORE
P.BE 
P.BEA
P.A
P.SP
P.CR
P.AR
P.AT

select * from Sales.Store as s
inner join Person.BusinessEntity as be
on s.BusinessEntityID =be.BusinessEntityID
inner join Person.BusinessEntityAddress as bea
on be.BusinessEntityID = bea.BusinessEntityID
/*
inner join Person.Address as a
on bea.AddressID = a.AddressID
inner join Person.StateProvince as sp
on a.StateProvinceID = sp.StateProvinceID
inner join Person.CountryRegion as cr
on sp.CountryRegionCode = cr.CountryRegionCode
*/
inner join Person.AddressType as at
on bea.AddressTypeID = at.AddressTypeID
where at.Name = 'Home'

--Billing 
GROUP BY  S.BTEID , S.NAME , Cr.NAME
HAVING COUNT(*)> 1


select * from Person.AddressType as at
where at.Name = 'Billing'

select * from Person.BusinessEntityAddress as at
where at.AddressID = 1

select * from Person.Address as at
where at.AddressID = 1

select * from Person.BusinessEntityAddress as at
where at.AddressID = 1

select * from Person.BusinessEntity as at
where at.BusinessEntityID = 1


-- Person BusinessEntityID
-- BusinessEntity BusinessEntityID

-- BusinessEntity BusinessEntityID
-- BusinessEntityAddress BusinessEntityID

--BusinessEntityAddress  AddressID
--Address AddressID

