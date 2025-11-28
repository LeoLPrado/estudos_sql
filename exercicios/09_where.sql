-- Lista de produtos com nome que comeca com Venda de

SELECT *

FROM produtos

-- ou WHERE DescCategoriaProduto = 'rpg'
WHERE DescNomeProduto LIKE 'Venda de%'