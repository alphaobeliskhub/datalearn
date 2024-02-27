select 
city,
count(distinct order_id) as number_orders,
sum(sales) as revenue
from public.orders
where category in ('Furniture', 'Technology')
group by city
having sum(sales) > 10000
order by revenue desc
limit 100;


select distinct(category)
from public.orders
limit 100;

select 
count(*),
count(distinct o.order_id)
from orders o left join returns r on o.order_id = r.order_id;

--9994 rows
--inner 3226 rows
--returns 296 unique rows
--all 5009 unique rows
--Задания показать:
--кол-во заказов которое было возвращено
--кол-во заказов которое общее
--кол-во заказов которое было успешное (не возвращено) 
--все повторить только уже по деньгам

select count (*),
count (distinct o.order_id)
from orders o
where order_id in (select distinct order_id from public.returns);

select *
from public.returns;