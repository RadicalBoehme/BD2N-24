Select nome_produto, nome_categoria
from produto
	left join Categoria
	on produto.ID_Categoria = Categoria.ID_categoria
	
	alter table categoria add int id_categoria 
	references categoria(ID_Categoria)
	insert into categoria (ID_categoria, nome_categoria)
	
	select * from categoria
	
	select * from produto
	
	alter table produto add int id_categoria references categoria 
	
	alter table produto add id_categoria int references categoria(ID_categoria)
	
	select nome_produto, nome_categoria
	from produto
	left join categoria
	on produto.id_categoria = categoria.id_categoria
	
	insert into categoria(id_categoria, nome_categoria)
	values (6, 'comida')
	
	insert into produto(id_produto)
	
	select nome_cliente, id_pedido
	from cliente
	RIGHT JOIN pedido
	on cliente.id_cliente = pedido.id_cliente
	
	select nome_produto, nome_cliente
	from produto
	cross join cliente
	where 
	
	select nome_produto, nome_categoria
	from produto
	full outer join categoria
	on
	
	select nome_produto, nome_categoria
	from produto
	full outer join categoria
	on produto.id_categoria = categoria.id_categoria
	
	update produto set id_categoria = 1 where id_produto = 1
	update produto set id_categoria = 2 where id_produto = 2
	update produto set id_categoria = 3 where id_produto = 11;
	update produto set id_categoria = 3 where id_produto = 12;
	update produto set id_categoria = 5 where id_produto = 13;
	update produto set id_categoria = 4 where id_produto = 14;
		select * from categoria
		select * from produto
exercicio '1'
select nome_categoria, count (id_produto) 
from categoria left join produto 
on categoria.id_categoria = produto.id_categoria
group by nome_categoria


exercicio '2'

select nome_cliente, id_produto
from cliente
	right join pedido
	on pedido.id_cliente = cliente.id_cliente
	
exercicio três

select nome_produto, nome_categoria