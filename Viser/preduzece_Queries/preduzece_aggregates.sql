use PREDUZECE;

--select min(plata) as 'Minimalna plata', max(plata) as 'Maksimalna plata', round(avg(plata), 1) as 'Prosečna plata', count(*) as 'Broj radnika'
--from radnik;

--select min(plata) 'Min plata VSS', max(plata) 'Max plata VSS', count(plata) as 'Broj radnik Visoke SS'
--from radnik;

--select count(*) as 'Broj nerasporedjenih radnika'
--from radnik 
--where id_odeljenja is null;

--select id_odeljenja as 'Šifra odeljenja', round(avg(plata), 1) as 'Prosečna plata'
--from radnik 
--where id_odeljenja is not null
--group by Id_odeljenja;

--select posao, round(avg(plata), 1) as 'Prosečna plata', count(*) as 'Broj radnika po struci'
--from radnik 
--where (plata is not null) and (posao is not null)
--group by posao;

--select id_odeljenja as 'Šifra odeljenja', kvalif as 'Kvalifikacija', sum(plata) as 'Ukupna plata odeljenja', count(*) as 'Broj radnik u odeljenju'
--from radnik 
--where id_odeljenja is not null
--group by id_odeljenja, kvalif
--order by kvalif;

--select id_odeljenja as 'Šifra odeljenja', min(plata) as 'Minimalna plata'
--from radnik 
--where id_odeljenja is not null
--group by id_odeljenja 
--having min(plata) >= 1100

--select id_odeljenja, kvalif as Kvalifikacija, count(*) as 'Broj radnika'
--from radnik
--where id_odeljenja is not null
--group by id_odeljenja, kvalif
--having count(*) >= 1 or count(*) <= 2;


