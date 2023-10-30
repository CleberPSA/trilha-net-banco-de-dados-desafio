--  1 - Buscar o nome e ano dos filmes
select nome, ano from Filmes

-- 2 -Buscar o nome e ano dos filmes, ordenados por ordem crescente 
--pelo ano

select nome, ano, Duracao from Filmes Order by ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from Filmes where Nome = 'De volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente
select * from filmes where Duracao between 101 and 149 Order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, 
--agrupando por ano, ordenando pela duracao em ordem decrescente
select * from filmes

Select ano, COUNT(*) Quantidade from Filmes group by ano

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
 Select * from Atores where Genero ='M'

 -- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, 
 -- e ordenando pelo PrimeiroNome
  Select * from Atores where Genero ='F' order by PrimeiroNome

  -- 10 - Buscar o nome do filme e o gênero
 SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
 SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
Where Generos.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, 
-- UltimoNome e seu Papel
 SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
 FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor