SELECT COVID19CASESANDDEATHS.dateRep, cases, countriesAndTerritories AS country FROM COVID19CASESANDDEATHS
INNER JOIN COUNTRYIDS ON COVID19CASESANDDEATHS.countryterritoryCode = COUNTRYIDS.countryterritoryCode
INNER JOIN COUNTRYNAMES ON COUNTRYIDS.geoID = COUNTRYNAMES.geoID
INNER JOIN DATES ON COVID19CASESANDDEATHS.dateRep = DATES.dateRep
WHERE countriesAndTerritories = 'United_Kingdom'
ORDER BY year, month, day;
