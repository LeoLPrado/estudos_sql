-- Quantos clientes que comecaram no primeiro dia do curso foram ate o quinto
-- Nao importa se faltou em algum dia entre o primeiro e ultimo

SELECT count(DISTINCT IdCliente)

FROM transacoes AS t1

WHERE t1.IdCliente IN (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)
AND substr(t1.DtCriacao, 1, 10) = '2025-08-29'