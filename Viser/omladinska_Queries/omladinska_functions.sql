use omladinska;

/* FN 1 */

--go
--create function fn_sumaStaza(@ime nchar(30), @prezime nchar(30))
--returns int
--as begin
--declare @sumaStaza int
--select @sumaStaza = sum(datediff(yy,dat_zap, getdate())) 
--					 from izvrsilac
--					 where ime = @ime and prezime = @prezime;
--return @sumaStaza;
--end;
--go

--select dbo.fn_sumaStaza('Rastko', 'Simić') as UkupanStaz;

--select ime, prezime, dbo.fn_sumaStaza(ime, prezime) as GodineStaza
--from izvrsilac;

/* FN 2 */

--go
--create function fun_zaposleniUMesecu(@mesec int)
--returns table
--as return (
--select ime, prezime, jmbg from izvrsilac
--where month(dat_zap) = @mesec
--);
--go

--select *
--from dbo.fun_zaposleniUMesecu(4)

/* FN 3 */

--go
--create function fn_isplacenaSredstva(@jmbg char(13))
--returns float
--as begin
--declare @ukupno float
--select @ukupno = sum(iznos) from isplata
--							where idIzvrsilac = 
--						    (select idIzvrsilac from izvrsilac where jmbg = @jmbg);
											
--return @ukupno;
--end;
--go

--select ime, prezime, dbo.fn_isplacenaSredstva(jmbg) as 'Isplacena sredstva izvrsiocu' from izvrsilac;

/* FN 4 */

--go
--create function fn_narucilacProjekta(@id int)
--returns table
--as return (
--select * from projekat
--where idNarucilac = @id);
--go

--select *
--from dbo.fn_narucilacProjekta(1);

