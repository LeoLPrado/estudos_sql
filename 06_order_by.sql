SELECT *

FROM clientes

-- Ordena algo (por padrao ele bota ascendente)
ORDER BY QtdePontos DESC

-- 10 maiores clientes
LIMIT 10;


--------------------------------------------------------------------------


-- Procurando os clientes mais antigos e quem tem mais ponto e quem tem twitch
-- WHERE vem antes da ordenacao
SELECT *

FROM clientes

-- esse where traz para a memoria apenas os que dados que estao de acordo com a condicao
-- isso torna o ordenamento mais rapido e menos custoso
WHERE flTwitch = 1

ORDER BY DtCriacao ASC, QtdePontos DESC
