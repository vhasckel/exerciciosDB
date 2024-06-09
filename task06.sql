select date_trunc('month', data_pedido) as mes,
	count(*) as total_itens_pedidos
from pedidos
group by date_trunc('month', data_pedido)
order by mes;

select clientes.* from clientes
full outer join pedidos on clientes.cliente_id = pedidos.cliente_id
where pedidos.cliente_id is null;

select * from pedidos
where valor = (select max(valor) from pedidos);

select produto_id, count(*) as total_itens_pedido
from itens_pedidos
group by produto_id;

select cliente_id, sum(valor) as total_itens_pedido
from pedidos
group by cliente_id
having count(*) > 1;

create table categorias (
	categoria_id serial primary key,
	nome_categoria varchar(50)
);

select c.categoria_id, c.nome_categoria, avg(p.preco) as preco_medio
from categorias c
join produtos p on c.categoria_id = p.categoria_id
group by c.categoria_id, c.nome_categoria;

select c.* from clientes c
join pedidos p on c.cliente_id = p.cliente_id
where p.valor = (select max(valor) from pedidos);