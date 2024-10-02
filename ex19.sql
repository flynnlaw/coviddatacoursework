SELECT
    dateRep,
    SUM(deaths) OVER (ROWS UNBOUNDED PRECEDING) AS cumulative_UK_deaths,
    SUM(cases) OVER (ROWS UNBOUNDED PRECEDING) AS cumulative_UK_cases
FROM
    COVID19CASESANDDEATHS
WHERE
    countryterritoryCode = 'GBR';