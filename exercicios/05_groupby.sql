-- Qual o dia da semana que tem mais pedidos em 2025

SELECT
        strftime('%w',substr(DtCriacao, 1, 10)) AS DiaSemana,
        count(IdTransacao) AS QtDeTransacao

FROM transacoes

WHERE DtCriacao >= '2025-01-01' AND DtCriacao <= '2025-12-31'

GROUP BY DiaSemana

ORDER BY QtDeTransacao DESC

LIMIT 1