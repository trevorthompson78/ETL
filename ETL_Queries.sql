--Shows full results of Billboard
SELECT *
FROM billboard

--Shows full results of Spotify
SELECT *
FROM spotify

--Joins tables on chart number (left join allows it to show all songs for Billboard)
SELECT billboard.chart_number,
		billboard.artist,
		billboard.title,
		spotify.chart_number,
		spotify.artist,
		spotify.title
FROM billboard
JOIN spotify
ON billboard.index = spotify.index;


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

--Shows the number of times an artist appears on both charts
SELECT COUNT(a.artist),
	a.artist
FROM (
	SELECT artist
	FROM billboard
	UNION ALL
	SELECT artist
	FROM spotify
) AS a
GROUP BY a.artist
ORDER BY count(artist) DESC






