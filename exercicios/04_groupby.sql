-- Quantos produtos sao de rpg

SELECT count(IdProduto) AS totalRpg

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

----------------

-- Desse jeito é melhor
SELECT DescCategoriaProduto,
        count(*)

FROM produtos

GROUP BY DescCategoriaProduto