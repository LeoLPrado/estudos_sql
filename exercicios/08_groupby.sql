-- Quantas transacoes ocrreram em cada dia da semana em 2025

SELECT
        strftime('%w', substr(DtCriacao, 1, 10)) AS DiaSemana,
        count(IdTransacao) AS QtDeTransacoes

FROM transacoes

WHERE DtCriacao LIKE '2025%'

GROUP BY DiaSemana
ORDER BY QtDeTransacoes DESC