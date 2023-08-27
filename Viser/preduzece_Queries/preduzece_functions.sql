use preduzece;

/* FN 2 */

--go
--create function fn_staz_radnika(@imeIN char(30), @prezimeIN char(30))
--returns int
--as begin
--declare @staz int
--select @staz = year(current_timestamp) - year(dat_zap)
--from radnik 
--where ime = @imeIN and prezime = @prezimeIN;
--return @staz;
--end;
--go

--select dbo.fn_staz_radnika('Mirjana', 'Dimić');

--print dbo.fn_staz_radnika('Mirjana', 'Dimić');

/* FN 2 */

--go
--create function fn_maks_plata()
--returns float
--as begin
--declare @maxPlata float
--select @maxPlata = max(plata) from radnik;
--return @maxPlata;
--end;
--go

--select dbo.fn_maks_plata();

--select ime, prezime 
--from radnik
--where plata+isnull(premija, 0) > dbo.fn_maks_plata();

/* FN 3 */

--go
--create function fnIzracunajMaxMesecnuPlatu(@idRadnika int)
--returns decimal(17,2)
--as begin
--declare @mesecniIznos decimal(17,2)
--select @mesecniIznos = plata * 1.14 + isnull(premija, 0.00) from radnik
--where id_radnika = @idRadnika;
--return isnull(@mesecniIznos, 0.00);
--end;
--go

--select dbo.fnIzracunajMaxMesecnuPlatu(5662);
--print dbo.fnIzracunajMaxMesecnuPlatu(7892);

