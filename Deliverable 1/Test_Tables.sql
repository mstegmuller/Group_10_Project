-- Creating tables
CREATE TABLE Zillow_home_value_index (
     RegionID INT NOT NULL,
     SizeRank INT NOT NULL,
	 RegionName VARCHAR NOT NULL,
	 RegionType VARCHAR NOT NULL,
	 StateName VARCHAR,
	 Jan14 INT NOT NULL,
	 Feb14 INT NOT NULL,
	 Mar14 INT NOT NULL,
	 Apr14 INT NOT NULL,
	 May14 INT NOT NULL,
	 Jun14 INT NOT NULL,
	 Jul14 INT NOT NULL,
	 Aug14 INT NOT NULL,
	 Sep14 INT NOT NULL,
	 Oct14 INT NOT NULL,
	 Nov14 INT NOT NULL,
	 Dec14 INT NOT NULL,
	 -- Depending on what we use from the dataset, we need to do this for target columns.
	 -- Dataset has values from Jan 2000 to Jan 2022.
     PRIMARY KEY (RegionID)
);
-- Table for Zillow_home_value_index.csv


CREATE TABLE Zillow_observed_rent_index(
	 RegionID INT,
     RegionName VARCHAR,
	 SizeRank VARCHAR, 
	 Jan14 INT,
	 Feb14 INT,
	 Mar14 INT,
	 Apr14 INT,
	 May14 INT,
	 Jun14 INT,
	 Jul14 INT,
	 Aug14 INT,
	 Sep14 INT,
	 Oct14 INT,
	 Nov14 INT,
	 Dec14 INT
	 -- FOREIGN KEY (RegionID) REFERENCES Zillow_home_value_index (RegionID)
	 -- Removing All keys for sample data since data will not match
);
-- Table for Zillow_observed_rent_index
-- DROP TABLE Zillow_observed_rent_index

CREATE TABLE Zillow_home_value_forecast (
	 Region VARCHAR,
	 RegionName VARCHAR,
	 StateName VARCHAR,
	 CountryName VARCHAR,
	 CityName VARCHAR,
	 ForecastedDate DATE NOT NULL,
	 Fcst_Pct_Change FLOAT
);

-- Other csv data files have thousands of columns with only one row, more like a list than a dataset.
-- It may be easier just to load those lists from the csv into pandas.

-- Not 100% sure on the ERD for these tables, but that may change depending on different data.


-- Data will need to be cleaned; many null values

SELECT * FROM Zillow_home_value_index;
SELECT * FROM Zillow_home_value_forecast;
SELECT * FROM Zillow_observed_rent_index;