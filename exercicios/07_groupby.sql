-- Qual produto com mais pontos transacionados

SELECT IdProduto,
        sum(vlProduto * QtdeProduto) AS totalPontos,
        sum(QtdeProduto) AS QtVenda

FROM transacao_produto

GROUP BY IdProduto
ORDER BY totalPontos DESC