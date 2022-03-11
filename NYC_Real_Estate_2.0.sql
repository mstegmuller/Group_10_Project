CREATE TABLE bronx_annual_sales20 (
	YEAR INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

CREATE TABLE brooklyn_annual_sales20 (
	YEAR INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

CREATE TABLE manhattan_annual_sales20 (
	YEAR INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT  
);
	
CREATE TABLE queens_annual_sales20 (
	YEAR INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

CREATE TABLE staten_island_annual_sales20 (
	YEAR INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

CREATE TABLE all_neighborhoods_annual_sales20 (
	ID INT NOT NULL UNIQUE,
	YEAR INT NOT NULL,
	BOROUGH	VARCHAR NOT NULL,
	NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY	VARCHAR,
	BUILDING_CLASS_AT_PRESENT VARCHAR,
	ADDRESS	TEXT NOT NULL,
	TOTAL_UNITS	INT,
	GROSS_SQ_FT	INT,
	SALE_PRICE INT 
);

INSERT INTO all_neighborhoods_annual_sales20
SELECT ALL * FROM brooklyn_annual_sales20
INSERT INTO all_neighborhoods_annual_sales20
SELECT ALL * FROM manhattan_annual_sales20
INSERT INTO all_neighborhoods_annual_sales20
SELECT ALL * FROM queens_annual_sales20
INSERT INTO all_neighborhoods_annual_sales20
SELECT ALL * FROM staten_island_annual_sales20
);

DROP TABLE all_neighborhoods_annual_sales20;

CREATE TABLE five_neighborhoods_annual_sales20 (
SELECT * From YEAR, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
FROM bronx_annual_sales20
UNION
SELECT YEAR, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
FROM brooklyn_annual_sales20
UNION
SELECT YEAR, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
FROM manhattan_annual_sales20
UNION
SELECT YEAR, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
FROM queens_annual_sales20
UNION
SELECT YEAR, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
FROM staten_island_annual_sales20
);

CREATE TABLE all_neighborhoods_annual_sales20
	AS (SELECT BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
	FROM bronx_annual_sales20, brooklyn_annual_sales20, manhattan_annual_sales20, queens_annual_sales20, staten_island_annual_sales20
);

CREATE TABLE new_table AS
	SELECT YEAR, BOROUGH, NEIGHBORHOOD, BUILDING_CLASS_CATEGORY, BUILDING_CLASS_AT_PRESENT, ADDRESS, TOTAL_UNITS, GROSS_SQ_FT, SALE_PRICE
    FROM bronx_annual_sales20, brooklyn_annual_sales20, manhattan_annual_sales20, queens_annual_sales20, staten_island_annual_sales20;


CREATE TABLE table2 AS
	TABLE bronx_annual_sales20, brooklyn_annual_sales20, manhattan_annual_sales20, queens_annual_sales20, staten_island_annual_sales20;

