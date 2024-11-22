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