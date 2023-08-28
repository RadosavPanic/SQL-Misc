use STUDENTSKA;

/* FN 1 */

--go
--create function fn_prosekPredmeta(@nazivPredmeta nchar(30))
--returns float
--as begin
--declare @prosecnaOcena float
--select @prosecnaOcena = round(avg(ocena), 2) from zapisnik
--											 where id_ispita in 
--											 (select id_ispita from ispit where id_predmeta in
--											 (select id_predmeta from predmet where naziv = @nazivPredmeta))
--return @prosecnaOcena;
--end;
--go

--select dbo.fn_prosekPredmeta('Baze podataka') as Prosek;
--print dbo.fn_prosekPredmeta('Baze podataka');


/* FN 2 */

--go
--create function fn_studentiSmera(@smer nchar(10))
--returns table
--as return 
--(select *
--from student
--where smer = @smer);
--go

--select *
--from dbo.fn_studentiSmera('IS');

/* FN 3 */

--go
--create function fn_prosekStudenta(@smer nvarchar(5), @broj int, @godina nvarchar(4))
--returns float
--as begin
--declare @prosek float
--select @prosek = avg(ocena) 
--				 from zapisnik, student
--				 where zapisnik.id_studenta = student.id_studenta
--				 and smer = @smer and broj = @broj and godina_upisa = @godina
--				 and ocena > 5;
--return @prosek;
--end;
--go

--select ime, prezime, isnull(dbo.fn_prosekStudenta(smer, broj, godina_upisa), 3) as 'Prosečna ocena' from student;

/* FN 4 */

--go
--create function fn_predmetiStudentaUGodini(@smer nvarchar(5), @broj int, @godina nvarchar(4), @skolskaGod nvarchar(7))
--returns table
--as return (
--select predmet.id_predmeta, naziv 
--from predmet, student_predmet, student
--where predmet.id_predmeta = student_predmet.id_predmeta
--and student.id_studenta = student_predmet.id_studenta
--and student_predmet.skolska_godina = @skolskaGod
--and smer = @smer and broj = @broj and godina_upisa = @godina
--);
--go

--select * 
--from fn_predmetiStudentaUGodini('NRT', 15, '2019', '2019/20');

/* FN 5 */

--go
--create function fn_prosekStudentaPoPredmetu(@predmetID int)
--returns float
--as begin
--declare @prosek float
--select @prosek = avg(ocena)
--				 from zapisnik
--				 where ocena > 5 and id_ispita in (select id_ispita
--												   from ispit
--												   where id_predmeta = @predmetID);

--return @prosek;
--end;
--go


--select dbo.fn_prosekStudentaPoPredmetu(2648) as 'Prosek predmeta studenta';

/* FN 6 */

--go
--create function fn_predmetiProfesora(@idProfesora int)
--returns table
--as return (
--select *
--from predmet
--where id_profesora = @idProfesora
--);
--go

--select * 
--from fn_predmetiProfesora(102);