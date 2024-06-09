select pedidos.*, clientes.* from pedidos
inner join clientes on pedidos.cliente_id = clientes.cliente_id;

select pedidos.*, clientes.* from clientes
left join pedidos on clientes.cliente_id = pedidos.cliente_id;

select produtos.*, itens_pedidos.* from produtos
right join itens_pedidos on produtos.produto_id = itens_pedidos.produto_id;

select * from clientes
where cidade = 'São paulo'
union
select * from clientes
where cidade = 'Rio de Janeiro';