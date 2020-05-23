DROP TABLE IF EXISTS billboard;

CREATE TABLE billboard (
	index INT,
	chart_number INT,
	title VARCHAR(255),
	artist VARCHAR(75)
);	

DROP TABLE IF EXISTS spotify;

CREATE TABLE spotify (
	index INT,
	chart_number INT,
	title VARCHAR(255),
	artist VARCHAR(75)
);	
	