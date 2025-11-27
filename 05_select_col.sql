-- Criando novas colunas (temporariamente)

SELECT IdCliente,
         QtdePontos,
         QtdePontos + 10 AS QtdePontosPlus10,
         QtdePontos * 2 AS QtdePontosDouble,

     -- Usando funcoes para modificar o tipo da data
     -- Documentacao do sqlite
     -- substr faz um recorte (fatia) da string principal
     -- datetime muda o tipo do dado para data (melhor para operacoes com data)

        DtCriacao,
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
     
     -- descobrindo o dia da semana
    
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana
    

      
FROM clientes