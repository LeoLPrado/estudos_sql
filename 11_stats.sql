SELECT round(avg(QtdePontos), 2) AS mediaCarteira,
        min(QtdePontos) AS minCarteira,
        max(QtdePontos) AS maxCarteira,

        count(CASE
            WHEN flTwitch = 1 THEN flTwitch
        END) AS CadastrosTwitch,

        -- Pois estao com 0 ou 1
        sum(flTwitch),
        sum(flEmail)

FROM clientes