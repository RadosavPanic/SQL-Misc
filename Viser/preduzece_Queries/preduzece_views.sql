use preduzece;

--go
--create view odeljenje30 as
--select *
--from preduzece.dbo.radnik 
--where id_odeljenja = 30;
--go

--select ime, prezime 
--from odeljenje30

--go
--create view odeljenje20 as
--select O.ime_od, R.ime, R.prezime, R.posao, R.kvalif, R.plata
--from radnik R, odeljenje O
--where O.id_odeljenja = R.id_odeljenja and O.id_odeljenja = 20;
--go

--select ime_od, ime, posao
--from odeljenje20;

--select O20.ime, O20.posao, O20.kvalif
--from odeljenje20 O20
--where O20.kvalif = 'VSS';

--go
--create view izvoz as 
--select R.id_radnika, R.ime, R.prezime, U.br_sati, U.funkcija
--from radnik R, ucesce U
--where R.id_radnika = U.id_radnika and 
--U.id_projekta = (select P.id_projekta
--				 from projekat P
--				 where P.ime_proj = 'izvoz');
--go

--select * from izvoz;