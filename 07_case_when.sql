-- Intervalos
-- De 0 a 500          -> Ponei
-- De 501 a 1000       -> Ponei Premium
-- De 1001 a 5000      -> Mago Aprendiz
-- De 5001 a 10000     -> Mago Mestre
-- +10001              -> Mago Supremo

-- Cada case gera uma, e apenas uma, coluna nova, como ele gera uma coluna nova ele tem que estar dentro do select
-- Pode usar varias colunas dentro do case para serem comparadas (qtdepontos,idcliente,etc)

SELECT IdCliente,
        QtdePontos,

        CASE
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS Categoria,

        CASE
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei,

        CASE 
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END AS flMago

FROM clientes

WHERE flMago = 1

ORDER BY QtdePontos DESC