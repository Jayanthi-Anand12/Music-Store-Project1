SELECT first_name, last_name, email,
 FROM `numeric-ocean-436007-f4.Music_Store.Customer`  as c
 join `numeric-ocean-436007-f4.Music_Store.Invoice` as inv
 on c.customer_id = inv.customer_id 
 join `numeric-ocean-436007-f4.Music_Store.Invoice_Line` as invl
 on inv.invoice_id = invl.invoice_id
 where track_id in (
  select track_id 
  from `numeric-ocean-436007-f4.Music_Store.Track` as tr
  join `numeric-ocean-436007-f4.Music_Store.Genre` as gen
  on tr.genre_id = gen.genre_id

 )
 order by email 
 LIMIT 10