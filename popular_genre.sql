with popular_genre as 
(select c.country, gen.name, count (ivl. quantity) as total,
ROW_NUMBER()OVER (PARTITION BY c.country order by count (ivl.quantity) desc) as Roll_No
from `numeric-ocean-436007-f4.Music_Store.Customer` as c
join `numeric-ocean-436007-f4.Music_Store.Invoice` as inv
on c.customer_id = inv.customer_id
join `numeric-ocean-436007-f4.Music_Store.Invoice_Line` as ivl
on inv.invoice_id = ivl.invoice_id
join `numeric-ocean-436007-f4.Music_Store.Track` as tr
on ivl.track_id = tr.track_id
join `numeric-ocean-436007-f4.Music_Store.Genre` as gen
on tr.genre_id = gen.genre_id
group by c.country, gen.name
order by country , total desc)
SELECT * FROM  popular_genre WHERE roll_No <=1 


