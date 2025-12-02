-- CTE: COMMOM TABLE EXPRESSION
-- Dar nome a uma query (salvar o resultado de uma query)
-- é bem melhor fazer cte ao inves de subquery
-- tb_cliente_primeiro_dia e uma tabela temporaria

WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_cliente_ultimo_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
),

tb_join AS(
SELECT t1.IdCliente AS primCliente,
        t2.IdCliente AS ultCliente

FROM tb_cliente_primeiro_dia AS t1

LEFT JOIN tb_cliente_ultimo_dia AS t2
ON t1.IdCliente = t2.IdCliente
)

SELECT count(primCliente) AS qtPrimDia,
        count(ultCliente) AS qtUltDia

FROM tb_join