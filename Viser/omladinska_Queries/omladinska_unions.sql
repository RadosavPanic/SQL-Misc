use OMLADINSKA;

/* EXCEPT */

--select ime, prezime 
--from izvrsilac 
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Uvoz'))
--except
--select ime, prezime 
--from izvrsilac
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce 
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv <> 'Uvoz'));


/* UNION */

--select ime, prezime 
--from izvrsilac 
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Uvoz'))
--union
--select ime, prezime 
--from izvrsilac
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce 
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Izvoz'));

/* UNION ALL */

--select ime, prezime 
--from izvrsilac 
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Uvoz'))
--union all
--select ime, prezime 
--from izvrsilac
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce 
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Izvoz'));

/* INTERSECT */

select ime, prezime 
--from izvrsilac 
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Uvoz'))
--intersect
--select ime, prezime 
--from izvrsilac
--where idIzvrsilac in (select idIzvrsilac
--					  from ucesce 
--					  where idProjekat in (select idProjekat
--										   from projekat
--										   where naziv = 'Izvoz'));
