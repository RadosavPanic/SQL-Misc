use PREDUZECE;

/* INNER JOIN */

--select ime, prezime
--from radnik, odeljenje 
--where radnik.id_odeljenja = odeljenje.id_odeljenja and mesto = 'Novi Beograd';

--select ime, prezime
--from radnik JOIN odeljenje
--on radnik.id_odeljenja = odeljenje.id_odeljenja
--where mesto = 'Novi Beograd';

/* LEFT JOIN */

--select ime_od, ime, posao
--from odeljenje LEFT JOIN radnik
--on odeljenje.id_odeljenja = radnik.id_odeljenja 
--where (ime is not null) and (posao is not null);

/* RIGHT JOIN */

--select ime_od, ime, prezime 
--from odeljenje RIGHT JOIN radnik
--on odeljenje.id_odeljenja = radnik.id_odeljenja 
--where ime_od is not null;

/* FULL JOIN */

--select ime_od, ime, posao 
--from odeljenje FULL JOIN radnik
--on odeljenje.id_odeljenja = radnik.id_odeljenja 
