select name, milliseconds
from `numeric-ocean-436007-f4.Music_Store.Track`
where milliseconds >

(SELECT round (avg (milliseconds), 2) as avg_milses
 FROM `numeric-ocean-436007-f4.Music_Store.Track` )
 order by milliseconds desc
