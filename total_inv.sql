SELECT billing_city, cast(sum (total) as decimal) as total_inv 
 FROM `numeric-ocean-436007-f4.Music_Store.Invoice` 
group by billing_city
order by total_inv desc
limit 3
