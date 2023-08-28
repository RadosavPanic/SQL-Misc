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

/* TRIGGER 2 */

--CREATE TABLE CenaRada_Log( 
--idIzvrsilac int not null, 
--staraCena float not null, 
--datum date not null 
--) 

--go
--create trigger promenaCene ON Izvrsilac 
--after update 
--as 
--if(UPDATE(cenaPoSatu)) 
--begin 
--INSERT INTO CenaRada_Log (idIzvrsilac,staraCena,datum) 
--VALUES((SELECT idIzvrsilac FROM deleted), (SELECT cenaPoSatu FROM 
--deleted),getDate()) 
--end 

--UPDATE IZVRSILAC 
--SET cenaPoSatu=cenaPoSatu+10 
--WHERE idIzvrsilac=1

/* SP 1 */

--go
--create procedure sredstva_projekat (@idProjekat1 int , @idProjekat2 int, @procenat float) 
--as begin 
--begin tran 
--UPDATE Projekat 
--Set budzet=budzet-(budzet*@procenat/100) 
--WHERE idProjekat=@idProjekat1 
--if @@ROWCOUNT=1 
--begin 
--UPDATE Projekat 
--Set budzet=budzet-(budzet*@procenat/100) 
--WHERE idProjekat=@idProjekat2 
--if @@ROWCOUNT=1 
--begin 
--commit 
--end 
--else 
--rollback 
--end 
--end

/* SP 2 */

--go
--create procedure prebaciRadnike2(@idProjekat1 int, @idProjekat2 int, @idIzvrsilac int) 
--as begin 
--begin tran 
--delete 
--FROM UCESCE 
--WHERE idProjekat=@idProjekat1 AND idIzvrsilac=@idIzvrsilac 
--if @@ROWCOUNT=1 
--begin 
--if((SELECT count(*) FROM ucesce WHERE idProjekat=@idProjekat2 AND 
--idIzvrsilac=@idIzvrsilac)=1) 
--rollback
--end 
--else 
--begin 
--INSERT INTO UCESCE 
--VALUES (@idIzvrsilac,@idProjekat2,null,null) 
--commit 
--end 
--end

/* SP 3 */

--go
--create procedure dodajNoviProjekat(@idNarucilac int, @naziv nvarchar(30), @pocetak datetime, 
--@budzet float) 
--as begin 
--INSERT INTO PROJEKAT (idNarucilac, naziv,pocetak, budzet) 
--VALUES(@idNarucilac,@naziv,@pocetak,@budzet) 
--declare @idIzvrsilac int 
--declare @idProjekat int 
--Select @idIzvrsilac = idIzvrsilac 
--FROM izvrsilac 
--WHERE dat_zap= (Select max(dat_zap) FROM izvrsilac) 
--Select @idProjekat = max(idProjekat) 
--FROM PROJEKAT 
--INSERT INTO UCESCE (idIzvrsilac,idProjekat) 
--VALUES(@idIzvrsilac,@idProjekat) 
--end