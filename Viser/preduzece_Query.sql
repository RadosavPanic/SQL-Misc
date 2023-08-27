use PREDUZECE;

--select ime, plata
--from radnik
--where kvalif <> 'VSS' and kvalif <> 'VKV';

--select ime_od
--from odeljenje
--where mesto in ('Novi Beograd', 'Banovo Brdo');

--select ime as 'Ime radnika', prezime as 'Prezime radnika'
--from radnik
--where ime like 'L%' or ime like 'A%';

--select ime_od as Ime_odeljenja, mesto as 'Mesto odeljenja'
--from odeljenje
--where ime_od like '%n%';

--select distinct posao as 'Poslovi u preduzeću'
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

--select ime, plata, plata * 0.1 as 'Godisnje povecanje 25'
--from radnik
--where kvalif = 'KV';

--select ime, plata, 12 * plata as 'Godisnja plata'
--from radnik
--where kvalif = 'VSS';

--select *
--from radnik
--where kvalif = 'KV'
--order by ime asc, plata desc;

--select id_radnika, ime, isnull(id_odeljenja, 0) as Odeljenje
--from radnik 
--where id_odeljenja is null;

--select id_radnika, ime, dat_zap as 'Datum zaposlenja', isnull(premija, 0) as Premija
--from radnik 
--where premija is null;

--select isnull(id_odeljenja, 0) as 'ID Odeljenja', ime
--from radnik
--group by Id_odeljenja, ime;

--select concat('Dr.', ime) as Ime, prezime as Prezime
--from radnik
--where posao = 'direktor';

--select ime, prezime, round(plata/50, 2) as 'Satnica'
--from radnik
--where plata/50 > 45 and plata is not null
--order by round(plata/50, 1) desc;

--select upper(ime_od) as 'Naziv odeljenja', len(ime_od) as 'Dužina stringa'
--from odeljenje;

--select ime, prezime, year(current_timestamp) - year(dat_zap) as 'Staž radnika'
--from radnik 


