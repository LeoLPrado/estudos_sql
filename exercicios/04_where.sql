-- Selecione produtos que contem 'Churn' no nome

SELECT *

FROM produtos

-- WHERE DescCategoriaProduto = 'churn_model' (melhor dentre elas por ser menos custosa)
-- WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

-- o LIKE é muito custoso
WHERE DescNomeProduto LIKE '%Churn%' 