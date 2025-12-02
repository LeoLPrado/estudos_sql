-- Qual mes tivemos mais lista de presenca assinada

SELECT
        substr(t3.DtCriacao, 1, 7) AS AnoMes,
        count(DISTINCT t3.IdTransacao) AS QtdeTransacao

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao

WHERE t2.DescNomeProduto = 'Lista de presença'

GROUP BY AnoMes

ORDER BY QtdeTransacao DESC

LIMIT 10