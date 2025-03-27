-- -- Add your CREATE statements from part 4 here.

-- DROP TABLE WhoRegion;
-- DROP TABLE Country;
-- DROP TABLE AlcoholConsumption;

-- CREATE TABLE `WhoRegion` (
--   `RegionCode` TEXT,
--   `RegionName` VARCHAR(50),
--   PRIMARY KEY (`RegionCode`)
-- );

-- CREATE TABLE `Country` (
--   `CountryCode` TEXT,
--   `CountryName` VARCHAR(50),
--   `RegionCode` TEXT,
--   PRIMARY KEY (`CountryCode`),
--   FOREIGN KEY (`RegionCode`) REFERENCES `WhoRegion`(`RegionCode`)
-- );


-- CREATE TABLE `AlcoholConsumption` (
--   `Year` INTEGER,
--   `CountryCode` TEXT,
--   `Sex` VARCHAR(25),
--   `HigherData` FLOAT,
--   `LowerData` FLOAT,
--   `AverageData` FLOAT,
--   PRIMARY KEY (`Year`, `CountryCode`, `Sex`),
--   FOREIGN KEY (`CountryCode`) REFERENCES `Country`(`CountryCode`)
-- );

-- INSERT INTO WhoRegion
-- SELECT DISTINCT "WHO Region Code", "WHO Region" 
-- FROM AllData;

-- INSERT INTO Country
-- SELECT DISTINCT "Country Code", "Country", "WHO Region Code"
-- FROM AllData;

-- INSERT INTO AlcoholConsumption
-- SELECT DISTINCT "Year","Country Code","Sex", "Alcohol total per capita (15+) consumption in liters (high estimation)", "Alcohol total per capita (15+) consumption in liters (low estimation)","Alcohol total per capita (15+) consumption in liters (numeric)"
--  FROM AllData;

-- DROP VIEW IF EXISTS AllDataView;

-- CREATE VIEW AllDataView AS
--     SELECT 
--     WhoRegion.RegionCode AS "WHO Region Code", 
--     WhoRegion.RegionName AS "WHO Region", 
--     Country.CountryCode AS "Country Code", 
--     Country.CountryName AS "Country", 
--     AlcoholConsumption.Year AS "Year",
--     AlcoholConsumption.Sex AS "Sex",
--     AlcoholConsumption.AverageData AS "Alcohol total per capita (15+) consumption in liters (numeric)",
--     AlcoholConsumption.LowerData AS "Alcohol total per capita (15+) consumption in liters (low estimation)",
--     AlcoholConsumption.HigherData AS "Alcohol total per capita (15+) consumption in liters (high estimation)",
--     AlcoholConsumption.AverageData||' ['||AlcoholConsumption.LowerData||' - '||AlcoholConsumption.HigherData||']' AS "Alcohol total per capita (15+) consumption in liters (string)"
    
-- FROM 
-- WhoRegion
-- JOIN Country ON Country.RegionCode = WhoRegion.RegionCode
-- JOIN AlcoholConsumption ON AlcoholConsumption.CountryCode = Country.CountryCode
-- ORDER BY "Year" DESC,"Alcohol total per capita (15+) consumption in liters (string)", "Country";

-- DROP TABLE AllData;
