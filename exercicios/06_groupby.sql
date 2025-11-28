-- Qual o produto mais transacionado ?

SELECT IdProduto,
        count(idTransacaoProduto) AS totalTransacao

FROM transacao_produto

GROUP BY IdProduto
ORDER BY totalTransacao DESC

LIMIT 1