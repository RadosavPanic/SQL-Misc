use PREDUZECE;

--select ime, prezime
--from radnik
--where plata = any (select plata
--				  from radnik
--				  where kvalif = 'VSS')
--and kvalif <> 'VSS';

--select ime, prezime 
--from radnik 
--where plata in(select plata from radnik where kvalif = 'VSS')
--and kvalif <> 'VSS';

--select ime, prezime 
--from radnik 
--where plata < all(select plata from radnik where kvalif = 'VSS')
--and kvalif <> 'VSS';

--select ime, prezime, kvalif, dat_zap, id_odeljenja
--from radnik
--where id_odeljenja <> 10 and dat_zap = some (select dat_zap 
--											  from radnik 
--											  where id_odeljenja = 10);

--select ime, prezime 
--from radnik 
--where id_odeljenja = any (select id_odeljenja
--						 from odeljenje
--						 where mesto = 'Novi Beograd');

--select id_radnika, ime, prezime
--from radnik 
--where id_radnika = any (select rukovodilac from radnik);

--select ime, prezime, plata
--from radnik 
--where id_odeljenja = (select id_odeljenja from odeljenje where mesto = 'Banovo Brdo')
--and year(dat_zap) > (select year(dat_zap) from radnik where ime = 'Mirjana');

--select ime, prezime 
--from radnik 
--where id_odeljenja = (select id_odeljenja from odeljenje where mesto = 'Stari Grad')
--and id_radnika in (select id_radnika from ucesce)
--and kvalif = (select kvalif from radnik where ime = 'Ivan' and prezime = 'Buha');

/* multi-column pair-wise query */
--select id_radnika, ime, prezime
--from radnik 
--where (rukovodilac, id_odeljenja) in (select r1.rukovodilac, r1.id_odeljenja 
--									  from radnik r1
--									  where r1.ime in ('Andrija', 'Tomislav'))
--and ime not in ('Andrija', 'Tomislav');

--SELECT id_radnika, ime, prezime
--FROM radnik 
--WHERE rukovodilac IN (
--    SELECT r1.rukovodilac 
--    FROM radnik r1 
--    WHERE r1.ime IN ('Andrija', 'Tomislav')
--)
--AND id_odeljenja IN (
--    SELECT r2.id_odeljenja 
--    FROM radnik r2 
--    WHERE r2.ime IN ('Andrija', 'Tomislav')
--)
--AND ime NOT IN ('Andrija', 'Tomislav');

--select ime_od
--from odeljenje
--where id_odeljenja in (select id_odeljenja
--					   from radnik
--					   group by id_odeljenja
--					   having sum(plata + isnull(premija, 0)) > 3000);

--select ime
--from radnik
--where plata+isnull(premija, 0) < (select avg(plata+isnull(premija, 0))
--									   from radnik 
--									   where id_odeljenja = (select id_odeljenja
--															 from odeljenje
--															 where mesto = 'Novi Beograd'));

--select ime, prezime, dat_zap as 'Datum zaposlenja', plata + isnull(premija, 0) as Primanja
--from radnik
--where id_radnika in (select id_radnika
--					 from ucesce
--					 group by id_radnika
--					 having count(*) > 2);

--select ime, prezime, plata
--from radnik 
--where plata + isnull(premija, 0) = (select max(plata + isnull(premija, 0))
--									from radnik);

--select ime, prezime
--from radnik 
--where plata + isnull(premija, 0) in (select max(plata + isnull(premija, 0))
--									from radnik
--									group by id_odeljenja)
--and id_odeljenja is not null;

--select ime, prezime 
--from radnik 
--where (id_odeljenja, plata + isnull(premija, 0)) in (select id_odeljenja, max(plata + isnull(premija, 0))
--													 from radnik
--													 group by id_odeljenja)
--and id_odeljenja is not null;

--select ime, posao, plata, r.id_odeljenja
--from radnik r,
--	 (select max(plata) as max_plata, id_odeljenja
--	 from radnik
--	 group by id_odeljenja) as maxplata
--where plata = max_plata and r.id_odeljenja = maxplata.id_odeljenja;