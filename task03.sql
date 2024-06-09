select * from clientes
where cidade = 'São Paulo';

select * from pedidos
join clientes on pedidos.cliente_id = clientes.cliente_id
where clientes.cidade = 'São Paulo'
order by pedidos.data_pedido desc;

select idade from clientes
where idade between 25 and 35;

