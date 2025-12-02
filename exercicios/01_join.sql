-- Qual a categoria de produtos mais vendidos

SELECT count(DISTINCT t1.IdTransacao) AS QtdeTransacao,
        t2.DescCategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

GROUP BY t2.DescCategoriaProduto

ORDER BY Qtdetransacao DESC