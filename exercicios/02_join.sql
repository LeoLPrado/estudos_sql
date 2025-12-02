-- Em 2024 quantas transacoes de lovers tivemos

SELECT count(DISTINCT t1.IdTransacao) AS TotalTransacoes

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao LIKE '2024%' AND t3.DescCategoriaProduto = 'lovers'
