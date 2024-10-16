select p.FirstName 
from [Person].[Person] as p
inner join [Person].[BusinessEntity] as be
on p.BusinessEntityID = be.BusinessEntityID
inner join [Person].[BusinessEntityAddress]  as bea
on be.BusinessEntityID = bea.BusinessEntityID
inner join [Person].[Address] as ad
on bea.AddressID = ad.AddressID
inner join [Person].[StateProvince] as sp
on ad.StateProvinceID = sp.StateProvinceID
inner join [Person].[CountryRegion] as cr
on cr.CountryRegionCode = sp.CountryRegionCode