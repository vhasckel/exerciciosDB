select * from clientes
where nome like 'A%';

SELECT clientes.cliente_id, clientes.nome, SUM(pedidos.valor) AS total_valor_pedidos
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.cliente_id
GROUP BY clientes.cliente_id, clientes.nome;

select cidade, avg(idade)
	as media_idades
	from clientes
group by cidade;