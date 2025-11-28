-- Agrupar por

SELECT IdProduto,
        count(*)

FROM transacao_produto

GROUP BY IdProduto;

--------------------------------

SELECT IdCliente,
        sum(QtdePontos) AS totaldePontos,
        count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

-- Having se usa logo apos o group by (é o where do group by)
HAVING totaldePontos > 4000

ORDER BY totaldePontos DESC

LIMIT 10