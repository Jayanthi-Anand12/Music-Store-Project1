SELECT  ar.artist_id, ar.name, count (ar.artist_id ) as no_of_artist
 FROM `numeric-ocean-436007-f4.Music_Store.Track` as tr
 join `numeric-ocean-436007-f4.Music_Store.Album` as al
 on tr.album_id = al.album_id 
 join `numeric-ocean-436007-f4.Music_Store.Artist` as ar
 on al.artist_id = ar.artist_id
 join `numeric-ocean-436007-f4.Music_Store.Genre` as gen
 on gen.genre_id = tr.genre_id
 where gen.name = 'Rock'
 group by ar. artist_id, ar.name
 order by no_of_artist desc
 limit 10
 