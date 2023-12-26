
SELECT Nome, Ano
FROM Filmes;

SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;
 
 SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id;

SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
JOIN Atores AS A ON EF.IdAtor = A.Id;
