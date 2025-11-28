-- Qual cliente fez mais transacoes no ano de 2024

SELECT IdCliente,
        count(IdTransacao) AS totalTransacoes

FROM transacoes

WHERE DtCriacao >= '2024-01-01' AND DtCriacao < '2025-01-01'

GROUP BY IdCliente

ORDER BY totalTransacoes DESC

LIMIT 1
