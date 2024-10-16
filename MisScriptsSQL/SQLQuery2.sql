
/*
las personas para las que tinen su telefonao de casa
*/

select p.FirstName ,pp.PhoneNumber
from [Person].[Person] as p
inner join [Person].[PersonPhone] as pp
on p.BusinessEntityID = pp.BusinessEntityID
inner join Person.PhoneNumberType as pnt
on pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID
--where pnt.Name = ""

select count(p.FirstName
from [Person].[Person] as p
inner join [Person].[PersonPhone] as pp
on p.BusinessEntityID = pp.BusinessEntityID
inner join Person.PhoneNumberType as pnt
on pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID
where pnt.Name = 'Home'


select * from Person.PhoneNumberType