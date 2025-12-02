-- Quem iniciou o curso no primneiro dia, em media assitiu quantas aulas
-- CTEs é uma forma de guardar o resultado das queries e depois ir reutilizando

-- quem participou da primeira aula
WITH tb_prim_dia AS (

    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'

),

-- quem participou do curso todo
tb_dias_curso AS (

    SELECT  DISTINCT IdCliente,
            substr(DtCriacao, 1, 10) AS presenteDia

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25' AND DtCriacao <= '2025-08-30'
   
    ORDER BY IdCliente, presenteDia
),

-- contando quantas vezes quem participou do primeiro dia voltou
tb_clientes_dias AS (
    SELECT t1.IdCliente,
            count(DISTINCT t2.presenteDia) AS QtDias

    FROM tb_prim_dia AS t1

    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente

    GROUP BY t1.IdCliente
)

-- calculando a media 
SELECT avg(QtDias),
        max(QtDias),
        min(QtDias)
        
FROM tb_clientes_dias