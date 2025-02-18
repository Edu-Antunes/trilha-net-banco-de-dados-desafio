
-- 1 - Buscar o nome e ano dos filmes
SELECT Nome,Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT  Nome,Ano FROM Filmes ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De volta para o futuro'

-- 4 - Buscar os filmes lan�ados
SELECT  Nome,Ano,Duracao FROM Filmes WHERE ano = 1997

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT  Nome,Ano,Duracao FROM Filmes WHERE ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao asc

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano,COUNT(Nome) Quantidade FROM Filmes group BY Ano ORDER BY Quantidade desc

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome,UltimoNome FROM Atores WHERE Genero = 'M'

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome,UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o g�nero
SELECT f.Nome, g.Genero  FROM Filmes f INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT f.Nome, g.Genero  FROM Filmes f INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mist�rio'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome,a.PrimeiroNome, a.UltimoNome,ef.Papel  FROM Filmes f INNER JOIN ElencoFilme ef ON f.id = ef.IdFilme INNER JOIN Atores a ON ef.IdAtor = a.Id 

