SELECT
    COUNTRYNAMES.countriesAndTerritories AS countries, ROUND(SUM(CAST(deaths AS FLOAT))/SUM(CAST(cases AS FLOAT))*100,2) AS percentdeathsofcountrycases
FROM
    COVID19CASESANDDEATHS
LEFT JOIN
    COUNTRYIDS ON COVID19CASESANDDEATHS.countryterritoryCode = COUNTRYIDS.countryterritoryCode
LEFT JOIN COUNTRYNAMES ON COUNTRYIDS.geoID = COUNTRYNAMES.geoID
GROUP BY COUNTRYNAMES.countriesAndTerritories
ORDER BY
    percentdeathsofcountrycases DESC
LIMIT
    10;
