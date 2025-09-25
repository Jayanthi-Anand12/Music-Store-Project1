SELECT count(*) as Max_invoice, Billing_Country  
FROM `numeric-ocean-436007-f4.Music_Store.Invoice`
group by Billing_Country
order by Max_Invoice desc


