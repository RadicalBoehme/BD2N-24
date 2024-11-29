
alter table cliente add column CPF varchar (11) not null;
alter table cliente add column Salario money;
alter table cliente add column Genero varchar (479) not null;

select * from cliente 

insert into cliente (id_cliente, nome_cliente, sobrenome_cliente, cpf, salario, genero)
values (54, 'Genivaldo', 'Estebas', '13454365474', 43433.42, 'walmart bag')

select nome_cliente, cpf, from cliente  

select nome_cliente, cpf, genero from cliente WHERE genero = 'Walmart Bag';

select nome_cliente, cpf from cliente order by nome_cliente desc;

select nome_cliente, salario from cliente where salario>'3000'

 SELECT avg(salario::numeric) as media_salarial from cliente group by (genero)

insert into produto (id_produto, nome_produto, descricao, preco, qtde_estoque)
values 
(11, 'headset', 'quadgamer', 240.70, 7),
(12, 'celular', 'redmi_note_11', 2700, 12),
(13, 'garrafa_pacco' , 'azul', 300, 547),
(14, 'mochila', 'preta', 50.0, 3012);

select * from produto

select avg (preco) as media_produto from produto


select avg(num_pedidos)from select id_cliente, count(id_pedido) as num_pedidos
SELECT AVG (Qtde_Estoque::numeric) Preco_medio FROM Produto
SELECT AVG(qtde::numeric) FROM Pedido
SELECT AVG(num_pedidos) FROM(SELECT ID_Cliente,COUNT(ID_Pedido) AS num_pedidos FROM Pedido GROUP BY ID_Cliente) AS pedidos_por_clientes;
SELECT AVG(Salario::numeric) FROM Cliente

select genero avg (salario::numeric) as Media_Salarial from cliente group by genero;