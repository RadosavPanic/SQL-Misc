use OMLADINSKA;

/* TRAN 1 */

--go
--create procedure sp_prebaciSredstvaProjekta(@idProjekta1 int, @idProjekta2 int, @procenat float)
--as begin
--declare @pom float
--begin tran
--select @pom = budzet - budzet * @procenat/100
--			  from projekat
--			  where idProjekat = @idProjekta1;
--update projekat
--set budzet = @pom
--where idProjekat = @idProjekta1;
--if @@ROWCOUNT = 0
--	begin
--	rollback
--	print('Neuspesno');
--end
--else
--	begin
--	update projekat
--	set budzet += @pom
--	where idProjekat = @idProjekta2;
--if @@ROWCOUNT = 0
--	begin
--	rollback
--	print('Neuspesno');
--end
--else
--begin
--commit
--print('Uspesno');
--end
--end
--end

/* TRIGGER 1 */
--go
--create trigger trig_plataRadnik on izvrsilac
--after update
--as
--if (update (cenaPoSatu))
--begin
--select ime, prezime, cenaPoSatu as NovaCena
--from inserted
--select ime, prezime, cenaPoSatu as StaraCena
--from deleted
--end

--update izvrsilac 
--set cenaPoSatu += 10
--where idIzvrsilac = 1;