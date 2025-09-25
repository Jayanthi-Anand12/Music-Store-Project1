SELECT  c.customer_id, c.first_name, cast(sum(inv.total) as decimal) as total_inv
 FROM `numeric-ocean-436007-f4.Music_Store.Customer` as c
 join `numeric-ocean-436007-f4.Music_Store.Invoice` as inv
 on c.customer_id = inv.customer_id
 group by  c.customer_id, c.first_name
 order by total_inv desc
 limit 1