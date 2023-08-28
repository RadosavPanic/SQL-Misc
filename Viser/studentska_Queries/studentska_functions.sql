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

select *
from dbo.fn_studentiSmera('IS');