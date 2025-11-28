-- Distinct traz todas as combinacoes distintas de linhas com base na tabela analisada

SELECT count(*),
        count(DISTINCT IdTransacao)
       -- Ambos dao a mesma saida pois IdTransacao é chave primaria da tabela de transacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01';


------------------------------------------------------------------------



-- Quantos clientes fizeram alguma transacao no mes de julho

SELECT count(DISTINCT idCliente)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'