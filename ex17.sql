SELECT
    COUNTRYNAMES.countriesAndTerritories AS country, ROUND(SUM(cases)*1.0/popData2020*100, 2) AS casespercentageofpop, ROUND(SUM(deaths)*1.0/popData2020*100, 2) AS deathaspercentageofpop
FROM
    COVID19CASESANDDEATHS
JOIN
    COUNTRYIDS ON COVID19CASESANDDEATHS.countryterritoryCode = COUNTRYIDS.countryterritoryCode
JOIN COUNTRYNAMES ON COUNTRYIDS.geoID = COUNTRYNAMES.geoID
JOIN POPULATION ON COUNTRYNAMES.countriesAndTerritories = POPULATION.countriesAndTerritories
GROUP BY
    COUNTRYNAMES.countriesAndTerritories;
