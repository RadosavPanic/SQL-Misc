use STUDENTSKA;

--insert into profesor 
--values (1111, 'Milan', 'Perić', 'dr', '10-04-2023');	

--select *
--from profesor 
--where ime = 'Milan' and prezime = 'Perić';

--update predmet 
--set id_profesora = (select id_profesora
--					from profesor
--					where ime = 'Vladimir' and prezime = 'Vuletić')
--where naziv = 'Analogna elektronika';

--select * 
--from student 
--where id_studenta in (select id_studenta
--					  from predmet p, student_predmet sp
--					  where p.id_predmeta = sp.id_predmeta and skolska_godina = '2019/20'
--					  group by id_studenta
--					  having sum(p.espb) > 30);

--select *
--from predmet 
--where id_predmeta  = (select top 1 id_predmeta 
--					  from ispit i join zapisnik z
--					  on i.id_ispita = z.id_ispita
--					  group by id_predmeta
--					  order by avg(ocena));

--update predmet 
--set id_profesora = (select id_profesora
--					from predmet
--					where naziv = 'Objektno programiranje 2')
--where naziv = 'Mikroprocesorski softver';

