-- Listar todas as transacoes adicionando uma coluna nova sinalizando
-- alto >= 500
--medio < 500
--baixo < 10

SELECT IdTransacao,
        IdCliente,
        CASE
            WHEN QtdePontos < 10 THEN 'Baixo'
            WHEN QtdePontos < 500 THEN 'Medio'
            ELSE 'Alto'
        END AS CategoriaTransacao

FROM transacoes