-- É uma consulta sobre a outra consulta
-- A execucao do que esta dentro do where retorna uma tabela de ids produto porem vinda da tabela produtos
-- e a nossa query vai retornar tudo da tabela transacoes produto onde o id da t1 esta na tabela que foi retornada da query dentro do where
-- SubQuery: o custo depende do volume de dados que a subquery traz, as vezes compensa mais o JOIN


SELECT *

FROM transacoes_produto AS t1

WHERE t1.IdProduto IN (
    SELECT IdProduto
    FROM produtos
    WHERE DescProduto = 'Resgatar Ponei'
)