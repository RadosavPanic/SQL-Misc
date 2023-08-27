use PREDUZECE;

--select ime, plata
--from radnik
--where kvalif <> 'VSS' and kvalif <> 'VKV';

--select ime_od
--from odeljenje
--where mesto in ('Novi Beograd', 'Banovo Brdo');

--select ime as Ime_radnika, prezime as Prezime_radnika
--from radnik
--where ime like 'L%' or ime like 'A%';

--select ime_od as Ime_odeljenja, mesto as Mesto_odeljenja
--from odeljenje
--where ime_od like '%n%';

--select distinct posao as Poslovi_u_preduzecu
--from radnik
--order by posao ASC;

--select ime, prezime
--from radnik
--where id_odeljenja = 10;

--select id_radnika, ime, kvalif
--from radnik
--where kvalif in ('KV', 'VKV', 'VSS');

--select ime, prezime, plata
--from radnik
--where posao='analitičar' and plata between 2000 and 5000;

--select posao
--from radnik
--where id_odeljenja = 20 and year(dat_zap) > 2000;

--select ime, plata, plata * 0.1 as Godisnje_povecanje_25
--from radnik
--where kvalif = 'KV';

--select ime, plata, 12 * plata as Godisnja_plata
--from radnik
--where kvalif = 'VSS';

