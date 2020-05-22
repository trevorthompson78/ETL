--Joins tables on chart number (left join allows it to show all songs for Billboard)
SELECT billboard.index,
		billboard.chart_number,
		spotify.artist,
		spotify.title,
		billboard.artist,
		billboard.title
FROM billboard
LEFT JOIN spotify
ON billboard.index = spotify.index;

--??
SELECT billboard.index,
		billboard.chart_number,
		spotify.artist,
		spotify.title,
		billboard.artist,
		billboard.title
FROM billboard
LEFT JOIN spotify
ON billboard.artist = spotify.artist;

--Shows where the same song appears in both charts as well as their chart numbers
SELECT  billboard.chart_number,
		billboard.artist,
		billboard.title,
		spotify.chart_number,
		spotify.artist,
		spotify.title
FROM billboard
LEFT JOIN spotify
ON billboard.title = spotify.title
WHERE billboard.title = spotify.title;

--Shows the number of times an artist appears on the Billboard Chart
SELECT COUNT(artist),
			artist
FROM billboard
GROUP BY artist
ORDER BY COUNT desc;

--Shows the number of times an artist appears on the Spotify Chart
SELECT COUNT(artist),
			artist
FROM spotify
GROUP BY artist
ORDER BY COUNT desc;

--NEEDS SOME WORK--
-- SELECT  billboard.artist,
-- 		billboard.chart_number,
-- 		spotify.artist,
-- 		spotify.chart_number
-- FROM billboard
-- JOIN spotify
-- ON billboard.artist = spotify.artist
-- WHERE billboard.artist = spotify.artist
-- ;



