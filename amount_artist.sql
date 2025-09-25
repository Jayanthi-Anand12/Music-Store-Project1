SELECT c.first_name, c.last_name, ar.name as artist_name, sum (ivl.unit_price * ivl.quantity) as total_price
from `numeric-ocean-436007-f4.Music_Store.Customer` as c
join `numeric-ocean-436007-f4.Music_Store.Invoice` as inv
on c.customer_id = inv.customer_id
join `numeric-ocean-436007-f4.Music_Store.Invoice_Line` as ivl
on inv.invoice_id = ivl.invoice_id
join `numeric-ocean-436007-f4.Music_Store.Track` as tr
on ivl.track_id = tr.track_id
join `numeric-ocean-436007-f4.Music_Store.Album` as alb
on tr.album_id = alb.album_id
join `numeric-ocean-436007-f4.Music_Store.Artist` as ar
on alb.artist_id = ar.artist_id
group by c.first_name,  c.last_name, ar.name   
order by   total_price desc
limit 5
