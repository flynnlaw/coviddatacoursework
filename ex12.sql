INSERT OR IGNORE INTO DATES(dateRep, day, month, year) SELECT DISTINCT dateRep, day, month, year FROM dataset;
INSERT OR IGNORE INTO COUNTRYIDS SELECT DISTINCT countryterritoryCode, geoId FROM dataset;
INSERT OR IGNORE INTO COUNTRYNAMES SELECT DISTINCT geoId, countriesAndTerritories FROM dataset;
INSERT OR IGNORE INTO POPULATION SELECT DISTINCT countriesAndTerritories, popData2020,continentExp FROM dataset;
INSERT INTO COVID19CASESANDDEATHS (dateRep, countryterritoryCode, cases, deaths)
SELECT dt.dateRep, c.countryterritoryCode, d.cases, d.deaths FROM dataset AS d INNER JOIN DATES AS dt ON d.dateRep = dt.dateRep INNER JOIN COUNTRYIDS AS c ON d.countryterritoryCode = c.countryterritoryCode;