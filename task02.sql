insert into clientes (nome, cidade, idade)
values ('Lucas Lima', 'Salvador', 29);

update clientes
set cidade = 'Fortaleza'
where cliente_id = 3;

delete from pedidos
where valor < 150.00;