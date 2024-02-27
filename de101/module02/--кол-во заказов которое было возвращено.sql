--кол-во заказов которое было возвращено
-- 296
select 
count(*),
count(distinct o.order_id)
from orders o inner join returns r on o.order_id = r.order_id;

