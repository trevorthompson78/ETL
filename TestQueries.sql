select count(artist),
			artist
from billboard
GROUP BY artist
union all 
select count(artist),
		artist
from spotify
GROUP BY artist
ORDER BY artist asc
;

select count(artist),
			artist
from billboard
GROUP BY artist
union all 
select count(artist),
		artist
from spotify
GROUP BY artist
;

SELECT COUNT (billboard.artist),
		billboard.artist,
		COUNT (spotify.artist),
		spotify.artist
FROM billboard
JOIN spotify
ON billboard.artist = spotify.artist
GROUP BY billboard.artist,
		spotify.artist
		
SELECT billboard.index,
		billboard.chart_number,
		spotify.artist,
		spotify.title,
		billboard.artist,
		billboard.title
FROM billboard
LEFT JOIN spotify
ON billboard.artist = spotify.artist;