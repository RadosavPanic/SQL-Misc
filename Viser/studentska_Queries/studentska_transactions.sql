use STUDENTSKA;

/* SP 1 */

--go
--create procedure noviZapis(@idPredmeta int, @idStudenta int, @idRoka int, @bodovi int, @ocena int)
--as begin
--declare @rok nvarchar(10);
--SELECT @rok=skolska_god FROM ispitni_rok WHERE id_roka=@idRoka; 
--declare @student int; 
--SELECT @student=COUNT(*) FROM student_predmet WHERE 
--id_predmeta=@idPredmeta AND skolska_godina=@rok AND id_studenta=@idStudenta; 
--if(@student>0) 
--begin 
--INSERT INTO Zapisnik 
--VALUES(@idStudenta,(SELECT id_ispita FROM ispit WHERE id_predmeta =@idPredmeta 
--AND id_roka=@idRoka),@ocena,@bodovi) 
--end 
--else 
--begin 
--Select 'Student nije izabrao predmet' 
--end 
--end

/* TRIGGER 1 */

--CREATE TABLE ISPIS 
--(id_Studenta int not null, 
--ime nvarchar(30) not null, 
--prezime nvarchar(30) not null, 
--smer nvarchar(10) not null, 
--broj int not null, 
--godina_upisa nvarchar(10) not null, 
--datum_brisanja date not null)

--go
--create trigger TrigerBrisanje ON Student 
--AFTER DELETE 
--as 
--INSERT INTO ISPIS 
--VALUES ( 
--(SELECT id_Studenta FROM Deleted),(SELECT ime FROM Deleted),(SELECT prezime 
--FROM Deleted), 
--(SELECT smer FROM Deleted),(SELECT broj FROM Deleted), 
--(SELECT godina_upisa FROM Deleted),getDate())

/* SP 2 */

--go
--create procedure menjaOcenu (@idStud int, @idIsp int, @bodovi int, @ocena int) 
--as begin 
--UPDATE zapisnik 
--SET ocena=@ocena, bodovi=@bodovi 
--WHERE id_studenta=@idStud AND id_ispita=@idIsp; 
--end

/* SP 3 */

--go
--create procedure pon_ocena (@idIspit int, @idStudent int) 
--as begin 
--UPDATE Zapisnik 
--SET ocena=2, bodovi=0 
--WHERE id_Ispita=@idIspit AND id_Studenta=@idStudent 
--end