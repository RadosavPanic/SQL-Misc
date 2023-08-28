use STUDENTSKA;

--go
--create view view_student2020
--as
--select ime, prezime, smer, broj, godina_upisa
--from student
--where godina_upisa = 2020;
--go

--select * 
--from view_student2020

--select *
--from view_student2020
--where smer = 'NRT';

--go
--create view view_ocenaStudenta as
--select ime, prezime, concat(smer,'-', broj,'/', godina_upisa) as Smer, avg(ocena) as 'Prosečna ocena'
--from student, zapisnik
--where student.id_studenta=zapisnik.id_studenta
--group by ime, prezime, concat(smer,'-', broj,'/', godina_upisa)
--go

--go
--create view view_predmetiProfesora as
--select profesor.id_profesora, ime, prezime, naziv
--from profesor, predmet
--where profesor.id_profesora = predmet.id_profesora
--go

--go
--create view view_predmetiStudenta as
--select ime, prezime, concat(smer, '-', broj, '/', godina_upisa) as Smer, naziv
--from student, predmet, student_predmet 
--where
--student.id_studenta = student_predmet.id_studenta 
--and
--predmet.id_predmeta = student_predmet.id_predmeta
--and skolska_godina = '2018/19';
--go

--go
--create view view_predmetiStudenta as
--select ime, prezime, concat(smer, '-', broj, '/', substring(godina_upisa, 3, 4)) as Smer, naziv
--from student, predmet, student_predmet 
--where
--student.id_studenta = student_predmet.id_studenta 
--and
--predmet.id_predmeta = student_predmet.id_predmeta
--and skolska_godina = '2018/19';
--go

--select * from view_predmetiStudenta

--go
--create view view_profesor2iliVise as
--select ime, prezime 
--from profesor 
--where id_profesora in (select id_profesora
--					   from predmet
--					   group by id_profesora
--					   having count(*) >= 2);
--go

--select *
--from view_profesor2iliVise

