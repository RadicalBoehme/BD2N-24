select * from personagens

select * from coletados

select *from itens

select distinct nome_item from itens, coletados where coletados.id_personagem = 2 and itens.id_item= coletados.id_item;  from itens, coletados where itens.id_item=coletados<id_item