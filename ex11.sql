CREATE TABLE IF NOT EXISTS DATES(
    dateRep TEXT NOT NULL UNIQUE,
    day TEXT NOT NULL,
    month TEXT NOT NULL,
    year TEXT NOT NULL,
    PRIMARY KEY(dateRep)
);

CREATE TABLE IF NOT EXISTS COUNTRYIDS(
    countryterritoryCode TEXT NOT NULL UNIQUE,
    geoID TEXT NOT NULL UNIQUE,
    PRIMARY KEY(countryterritoryCode),
    FOREIGN KEY(geoID) REFERENCES COUNTRYNAMES(geoID)
);
CREATE TABLE IF NOT EXISTS COUNTRYNAMES(
    geoID TEXT NOT NULL UNIQUE,
    countriesAndTerritories TEXT NOT NULL UNIQUE,
    PRIMARY KEY(geoID),
    FOREIGN KEY (countriesAndTerritories) REFERENCES POPULATION(countriesAndTerritories)
);
CREATE TABLE IF NOT EXISTS POPULATION(
    countriesAndTerritories TEXT NOT NULL UNIQUE,
    popData2020 TEXT NOT NULL,
    continentEXP TEXT NOT NULL,
    PRIMARY KEY(countriesAndTerritories)
);

CREATE TABLE IF NOT EXISTS COVID19CASESANDDEATHS(
    dateRep TEXT NOT NULL,
    countryterritoryCode TEXT NOT NULL,
    cases TEXT NOT NULL,
    deaths TEXT NOT NULL,
    PRIMARY KEY(dateRep, countryterritoryCode),
    FOREIGN KEY (dateRep) REFERENCES DATES(dateRep),
    FOREIGN KEY (countryterritoryCode) REFERENCES COUNTRYIDS(countryterritoryCode)
);