SELECT
    COUNTRYNAMES.countriesAndTerritories AS country_name,
    COVID19CASESANDDEATHS.dateRep AS date,
    COVID19CASESANDDEATHS.cases AS number_of_cases,
    COVID19CASESANDDEATHS.deaths AS number_of_deaths
FROM
    COVID19CASESANDDEATHS
JOIN
    COUNTRYIDS ON COVID19CASESANDDEATHS.countryterritoryCode = COUNTRYIDS.countryterritoryCode
JOIN COUNTRYNAMES ON COUNTRYIDS.geoID = COUNTRYNAMES.geoID
ORDER BY
    substr(dateRep, 7, 4) || '/' || substr(dateRep, 4, 2) || '/' || substr(dateRep, 1, 2),
    COUNTRYNAMES.countriesAndTerritories;