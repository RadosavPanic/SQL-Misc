use omladinska;

/* SP 1 */

--go
--create procedure sp_projekatIzvrsioca(@nazivProjekta nchar(30), @ime nchar(30), @prezime nchar(30))
--as begin
--declare @flagProjekta int
--select @flagProjekta = count(*)
--					   from ucesce
--					   where idIzvrsilac = (select idIzvrsilac
--										    from izvrsilac
--											where ime = @ime and prezime = @prezime)
--					   and idProjekat = (select idProjekat
--										 from projekat
--										 where naziv = @nazivProjekta)
--if @flagProjekta = 0
--begin 
--insert into ucesce(idIzvrsilac, idProjekat)
--values((select idIzvrsilac from izvrsilac where ime = @ime and prezime = @prezime),
--(select idProjekat from projekat where naziv = @nazivProjekta))
--end
--end
--go

--exec sp_projekatIzvrsioca 'Projektovanje', 'Dalibor', 'Grgurović';

/* SP 2 */

--go
--create procedure sp_promeniCenu(@ime nchar(30), @prezime nchar(30), @procenat int)
--as begin
--update izvrsilac
--set cenaPoSatu = cenaPoSatu + cenaPoSatu * @procenat/100
--where ime = @ime and prezime = @prezime
--end
--go

--exec sp_promeniCenu 'Rastko', 'Simić', 5;

/* SP 2 - Alter */

--go
--alter procedure sp_promeniCenu(@ime nchar(30), @prezime nchar(30), @procenat int)
--as begin
--declare @staraPlata real
--declare @novaPlata real
--select @staraPlata = cenaPoSatu 
--					 from izvrsilac
--					 where ime = @ime and prezime = @prezime;
--update izvrsilac
--set cenaPoSatu = cenaPoSatu + cenaPoSatu * @procenat/100;
--select @novaPlata = cenaPoSatu
--					from izvrsilac
--					where ime = @ime and prezime = @prezime;
--print 'Radnik' + ' ' + rtrim(@ime) + ' - ' + 'Stara plata = ' + ltrim(str(@staraPlata)) + ', ' + 'Nova plata = ' + ltrim(str(@novaPlata)); 
--end;
--go

--exec sp_promeniCenu 'Rastko', 'Simić', 5;

/* SP 3 */

--go
--create procedure sp_otpusti 
--@ime nchar(30),
--@prezime nchar(30)
--as begin
--delete from izvrsilac
--where ime = @ime and prezime = @prezime
--if @@rowcount = 1
--	select 'Otpusten'
--else 
--	select 'Ne moze se otpustiti'
--end
--go

--exec sp_otpusti 'Dušica', 'Pap';