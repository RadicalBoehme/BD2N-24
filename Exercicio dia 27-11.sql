create or replace view produtos_comprados as 
	select id_pedido as numero_pedido, nome_cliente, nome_produto, pe.qtde as Quantidade, pe.Qtde*preco as fatura
	from pedido Pe
	inner join produto
	on pe.id_produto = produto.id_produto
	inner join cliente
	on pe.id_cliente = cliente.id_cliente
	
	select * from produtos_comprados
	
	alter view produtos_comprados
	
	
create or replace view produtos_categorias as
	select nome_produto, nome_categoria
	from produto
	left join categoria on categoria.id_categoria = produto.id_categoria
	select * from pedidos_categorias
	
create or replace view pedidos_feitos as
	select nome_cliente, id_pedido, Id_produto, qtde
	from pedido
	right join cliente on cliente.Id_cliente = pedido.id_cliente
	select * from pedidos_feitos
	
	create or replace view usuario_cliente as 
	select nome_cliente, pe.id_pedido, nome_produto
	from pedido pe
	inner join produto
	on pe.id_produto = produto.id_produto
	full outer join cliente
	on pe.id_cliente = cliente.id_cliente
	select * from usuario_cliente
	
	
	create index on cliente(id_cliente)
	
	create index on produto using HASH (id_produto)
	
	create index on pedido using HASH (id_pedido)
	
	
	
	create trigger nome_trigger
	[before|after]
	insert|delete|
	
	create or replace function nome_funcao() returns
	
	create table historico_salarial (
	 id_historico_salarial serial primary key NOT NULL,
	 id_cliente int references cliente(id_cliente),
	 data_alteracao date not null,
	 salario money not null);
	 
	 create or replace function atualizacao_salario() returns 
	 trigger as $$ begin
	 insert into historico_salarial(id_cliente, data_alteracao, salario)
	 values (new.id_cliente, NOW(), new.salario);
	 return null; end; $$language plpgsql;
	 
	 create or replace trigger trigger_atualizado_salario
	 after insert or update on cliente
	 for each row
	 execute function atualizacao_salario()
	 
	 update cliente set salario = '301220,07' where id_cliente = 42
	 update cliente set salario = '240720,06' where id_cliente = 73

	 select * from historico_salarial 
	 
	 select * from cliente
	 
	 alter table historico_salarial alter column salaria rename to salario
	 alter table historico_salarial add column salario money
	 alter table historico_salarial drop column salaria
	 
	 create table historico_preco_produto (
	 id_historico_preco_produto serial primary key not null,
	 id_produto int not null references produto(id_produto),
	 preco money not null,
     data_alteracao date not null
	 )
	 
	 create or replace function atualizacao_preco() returns 
	 trigger as $$ begin
	 insert into historico_preco_produto(id_produto, data_alteracao, preco)
	 values (new.id_produto, NOW(), new.preco);
	 return null; end; $$language plpgsql;
	 
	 create or replace trigger trigger_atualiza_historico
	 after insert or update on produto
	 for each row
	 execute function atualizacao_preco()
	 
	 select * from produto
	 
	 select * from historico_preco_produto
	 
	 
	  update produto set preco = '301220.07' where id_produto = 2
	  