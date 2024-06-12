select avg(c.idade) as media_idade
from clientes c
where c.cliente_id in (
	select cliente_id
	from pedidos
	group by cliente_id
	having sum(valor) > 300.00
);

