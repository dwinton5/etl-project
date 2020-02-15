CREATE TABLE Demography (
	ID INT PRIMARY KEY,
	year INT,
	region VARCHAR,
	npg DEC,
	birth_rate DEC,
	death_rate DEC,
	gdw DEC,
	urbanization DEC
);

DROP TABLE Demography;

CREATE TABLE Alcohol (
	ID INT,
	year INT,
	region VARCHAR,
	wine DEC,
	beer DEC,
	vodka DEC,
	champagne DEC,
	brandy DEC
);

DROP TABLE Alcohol;


SELECT Demography.year, Demography.region, Demography.birth_rate, Demography.death_rate, Alcohol.wine, Alcohol.beer, Alcohol.vodka, Alcohol.champagne, Alcohol.brandy
FROM Demography
INNER JOIN Alcohol ON
Alcohol.ID=Demography.ID;
