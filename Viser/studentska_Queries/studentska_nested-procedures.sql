use STUDENTSKA;

--select ime, prezime
--from student
--where godina_upisa = 2020 
--select @@ROWCOUNT as Total

--go
--create procedure sp_studentsP
--as begin
--if not exists(select * 
--			  from information_schema.tables
--			  where information_schema.tables.table_name = 'studentsP')
--begin
--	select * into StudentsP from student where id_studenta is null
--	select 'Tabela kreirana'
--end;
--else	
--	select 'Tabela postoji'
--end;
--go