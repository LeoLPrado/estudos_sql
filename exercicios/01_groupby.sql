-- Quantos clientes tem email cadastrado?

SELECT count(idCliente)

FROM clientes

WHERE flEmail = 1