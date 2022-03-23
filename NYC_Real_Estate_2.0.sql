CREATE TABLE bronx_annual_sales20 (
	YEAR_COLLECTED INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

-- DROP TABLE bronx_annual_sales20;

CREATE TABLE brooklyn_annual_sales20 (
	YEAR_COLLECTED INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

-- DROP TABLE brooklyn_annual_sales20;

CREATE TABLE manhattan_annual_sales20 (
	YEAR_COLLECTED INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT  
);
	
-- DROP TABLE manhattan_annual_sales20;	

CREATE TABLE queens_annual_sales20 (
	YEAR_COLLECTED INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

-- DROP TABLE queens_annual_sales20;	

CREATE TABLE staten_island_annual_sales20 (
	YEAR_COLLECTED INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

-- DROP TABLE staten_island_annual_sales20;

CREATE TABLE all_boro_sales_2020 (
    YEAR_COLLECTED INT NOT NULL,
    BOROUGH VARCHAR NOT NULL,
    NEIGHBORHOOD VARCHAR NOT NULL,
    BUILDING_CLASS_CATEGORY VARCHAR,
    BUILDING_CLASS_AT_PRESENT VARCHAR,
    ADDRESS TEXT NOT NULL,
    TOTAL_UNITS INT,
    GROSS_SQ_FT INT,
    SALE_PRICE INT
);
INSERT INTO all_boro_sales_2020 (YEAR_COLLECTED, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE)
SELECT
    YEAR_COLLECTED,
    BOROUGH,
    NEIGHBORHOOD,
    BUILDING_CLASS_CATEGORY,
    BUILDING_CLASS_AT_PRESENT,
    ADDRESS,
    TOTAL_UNITS,
    GROSS_SQ_FT,
    SALE_PRICE
FROM bronx_annual_sales20;
INSERT INTO all_boro_sales_2020 (YEAR_COLLECTED, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE)
SELECT
    YEAR_COLLECTED,
    BOROUGH,
    NEIGHBORHOOD,
    BUILDING_CLASS_CATEGORY,
    BUILDING_CLASS_AT_PRESENT,
    ADDRESS,
    TOTAL_UNITS,
    GROSS_SQ_FT,
    SALE_PRICE
FROM brooklyn_annual_sales20;
INSERT INTO all_boro_sales_2020 (YEAR_COLLECTED, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE)
SELECT
    YEAR_COLLECTED,
    BOROUGH,
    NEIGHBORHOOD,
    BUILDING_CLASS_CATEGORY,
    BUILDING_CLASS_AT_PRESENT,
    ADDRESS,
    TOTAL_UNITS,
    GROSS_SQ_FT,
    SALE_PRICE
FROM manhattan_annual_sales20;
INSERT INTO all_boro_sales_2020 (YEAR_COLLECTED, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE)
SELECT
    YEAR_COLLECTED,
    BOROUGH,
    NEIGHBORHOOD,
    BUILDING_CLASS_CATEGORY,
    BUILDING_CLASS_AT_PRESENT,
    ADDRESS,
    TOTAL_UNITS,
    GROSS_SQ_FT,
    SALE_PRICE
FROM queens_annual_sales20;
INSERT INTO all_boro_sales_2020 (YEAR_COLLECTED, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE)
SELECT
    YEAR_COLLECTED,
    BOROUGH,
    NEIGHBORHOOD,
    BUILDING_CLASS_CATEGORY,
    BUILDING_CLASS_AT_PRESENT,
    ADDRESS,
    TOTAL_UNITS,
    GROSS_SQ_FT,
    SALE_PRICE
FROM staten_island_annual_sales20;

-- SELECT * FROM all_boro_sales_2020