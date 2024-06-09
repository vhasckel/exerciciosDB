create table categorias (
	categoria_id serial primary key,
	nome_categoria varchar(50)
);

alter table produtos
add column categoria_id int;

alter table produtos
add constraint fk_categoria
foreign key (categoria_id)
references categorias (categoria_id);

alter table produtos drop constraint fk_categoria;

drop table categorias;