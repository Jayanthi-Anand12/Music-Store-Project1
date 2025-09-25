with top_customer as (SELECT c.country,c.first_name, c.last_name, sum(total) as tot,
ROW_NUMBER () OVER (PARTITION BY c.country ORDER BY sum(total) desc) as Roll_No
 FROM `numeric-ocean-436007-f4.Music_Store.Customer` as c
 join `numeric-ocean-436007-f4.Music_Store.Invoice` as inv
 on c.customer_id = inv.customer_id
group by c.country,  c.first_name, c.last_name  
order by c.country,  tot desc)

select *
from top_customer
where Roll_No <=1