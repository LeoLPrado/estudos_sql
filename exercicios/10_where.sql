-- Lista de produtos com nome que termina com 'Lover'

SELECT *

FROM produtos

-- ou WHERE DescCategoriaProduto = 'lovers'
WHERE DescNomeProduto LIKE '%Lover'