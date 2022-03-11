-- Creating tables for sales prices in NYC neighborhoods

CREATE TABLE bronx_sales_prices (
     BOROUGH TEXT NOT NULL,
     NEIGHBORHOOD VARCHAR NOT NULL,
	 BUILDING_CLASS_CATEGORY VARCHAR NOT NULL,
	 NUMBER_OF_SALES INT NOT NULL,
	 MINIMUM_SALE_PRICE INT NOT NULL,
	 AVERAGE_SALE_PRICE INT NOT NULL,
	 MEDIAN_SALE_PRICE INT NOT NULL,
	 MAXIMUM_SALE_PRICE INT NOT NULL
);


CREATE TABLE brookyln_sales_prices (
     BOROUGH TEXT NOT NULL,
     NEIGHBORHOOD VARCHAR NOT NULL,
	 BUILDING_CLASS_CATEGORY VARCHAR NOT NULL,
	 NUMBER_OF_SALES INT NOT NULL,
	 MINIMUM_SALE_PRICE INT NOT NULL,
	 AVERAGE_SALE_PRICE INT NOT NULL,
	 MEDIAN_SALE_PRICE INT NOT NULL,
	 MAXIMUM_SALE_PRICE INT NOT NULL
);


CREATE TABLE manhattan_sales_prices (
     BOROUGH TEXT NOT NULL,
     NEIGHBORHOOD VARCHAR NOT NULL,
	 BUILDING_CLASS_CATEGORY VARCHAR NOT NULL,
	 NUMBER_OF_SALES INT NOT NULL,
	 MINIMUM_SALE_PRICE INT NOT NULL,
	 AVERAGE_SALE_PRICE INT NOT NULL,
	 MEDIAN_SALE_PRICE INT NOT NULL,
	 MAXIMUM_SALE_PRICE INT NOT NULL
);


CREATE TABLE queens_sales_prices (
     BOROUGH TEXT NOT NULL,
     NEIGHBORHOOD VARCHAR NOT NULL,
	 BUILDING_CLASS_CATEGORY VARCHAR NOT NULL,
	 NUMBER_OF_SALES INT NOT NULL,
	 MINIMUM_SALE_PRICE INT NOT NULL,
	 AVERAGE_SALE_PRICE INT NOT NULL,
	 MEDIAN_SALE_PRICE INT NOT NULL,
	 MAXIMUM_SALE_PRICE INT NOT NULL
);


CREATE TABLE staten_island_sales_prices (
     BOROUGH TEXT NOT NULL,
     NEIGHBORHOOD VARCHAR NOT NULL,
	 BUILDING_CLASS_CATEGORY VARCHAR NOT NULL,
	 NUMBER_OF_SALES INT NOT NULL,
	 MINIMUM_SALE_PRICE INT NOT NULL,
	 AVERAGE_SALE_PRICE INT NOT NULL,
	 MEDIAN_SALE_PRICE INT NOT NULL,
	 MAXIMUM_SALE_PRICE INT NOT NULL
);

-- Joining bronx_sales_prices, brookyln_sales_prices, manhattan_sales_prices, queens_sales_prices, and staten_island_sales_prices tables
SELECT BOROUGH,
		NEIGHBORHOOD,
		BUILDING_CLASS_CATEGORY,
		NUMBER_OF_SALES,
	 	MINIMUM_SALE_PRICE,
	 	AVERAGE_SALE_PRICE,
	 	MEDIAN_SALE_PRICE,
		MAXIMUM_SALE_PRICE
INTO neighborhood_sales_prices
FROM bronx_sales_prices as bx
FULL JOIN
brookyln_sales_prices as bk
ON bx.BOROUGH = bk.BOROUGH
FULL JOIN
manhattan_sales_prices as mh
ON bk.BOROUGH = mh.BOROUGH
FULL JOIN
queens_sales_prices as qn
ON mh.BOROUGH = qn.BOROUGH
FULL JOIN
staten_island_sales_prices as si
ON qn.BOROUGH = si.BOROUGH



-- ATTEMPLED Joining bronx_sales_prices, brookyln_sales_prices, manhattan_sales_prices, queens_sales_prices, and staten_island_sales_prices tables
SELECT bx.BOROUGH,
		bx.NEIGHBORHOOD,
		bx.BUILDING_CLASS_CATEGORY,
		bx.NUMBER_OF_SALES,
	 	bx.MINIMUM_SALE_PRICE,
	 	bx.AVERAGE_SALE_PRICE,
	 	bx.MEDIAN_SALE_PRICE,
		bx.MAXIMUM_SALE_PRICE
FROM bronx_sales_prices as bx
FULL JOIN brookyln_sales_prices as bk ON bx.BOROUGH = bk.BOROUGH
FULL JOIN manhattan_sales_prices as mh ON bk.BOROUGH = mh.BOROUGH
FULL JOIN queens_sales_prices as qn ON mh.BOROUGH = qn.BOROUGH
FULL JOIN staten_island_sales_prices as si ON qn.BOROUGH = si.BOROUGH


SELECT bronx_sales_prices.BOROUGH,
		bronx_sales_prices.NEIGHBORHOOD,
		bronx_sales_prices.BUILDING_CLASS_CATEGORY,
		bronx_sales_prices.NUMBER_OF_SALES,
	 	bronx_sales_prices.MINIMUM_SALE_PRICE,
	 	bronx_sales_prices.AVERAGE_SALE_PRICE,
	 	bronx_sales_prices.MEDIAN_SALE_PRICE,
		bronx_sales_prices.MAXIMUM_SALE_PRICE,
		brookyln_sales_prices.BOROUGH,
		brookyln_sales_prices.NEIGHBORHOOD,
		brookyln_sales_prices.BUILDING_CLASS_CATEGORY,
		brookyln_sales_prices.NUMBER_OF_SALES,
	 	brookyln_sales_prices.MINIMUM_SALE_PRICE,
	 	brookyln_sales_prices.AVERAGE_SALE_PRICE,
	 	brookyln_sales_prices.MEDIAN_SALE_PRICE,
		brookyln_sales_prices.MAXIMUM_SALE_PRICE,
		manhattan_sales_prices.BOROUGH,
		manhattan_sales_prices.NEIGHBORHOOD,
		manhattan_sales_prices.BUILDING_CLASS_CATEGORY,
		manhattan_sales_prices.NUMBER_OF_SALES,
	 	manhattan_sales_prices.MINIMUM_SALE_PRICE,
	 	manhattan_sales_prices.AVERAGE_SALE_PRICE,
	 	manhattan_sales_prices.MEDIAN_SALE_PRICE,
		manhattan_sales_prices.MAXIMUM_SALE_PRICE,
		queens_sales_prices.BOROUGH,
		queens_sales_prices.NEIGHBORHOOD,
		queens_sales_prices.BUILDING_CLASS_CATEGORY,
		queens_sales_prices.NUMBER_OF_SALES,
	 	queens_sales_prices.MINIMUM_SALE_PRICE,
	 	queens_sales_prices.AVERAGE_SALE_PRICE,
	 	queens_sales_prices.MEDIAN_SALE_PRICE,
		queens_sales_prices.MAXIMUM_SALE_PRICE,
		staten_island_sales_prices.BOROUGH,
		staten_island_sales_prices.NEIGHBORHOOD,
		staten_island_sales_prices.BUILDING_CLASS_CATEGORY,
		staten_island_sales_prices.NUMBER_OF_SALES,
	 	staten_island_sales_prices.MINIMUM_SALE_PRICE,
	 	staten_island_sales_prices.AVERAGE_SALE_PRICE,
	 	staten_island_sales_prices.MEDIAN_SALE_PRICE,
		staten_island_sales_prices.MAXIMUM_SALE_PRICE
FROM bronx_sales_prices as bx
FULL JOIN brookyln_sales_prices as bk ON bx.BOROUGH = bk.BOROUGH
FULL JOIN manhattan_sales_prices as mh ON bk.BOROUGH = mh.BOROUGH
FULL JOIN queens_sales_prices as qn ON mh.BOROUGH = qn.BOROUGH
FULL JOIN staten_island_sales_prices as si ON qn.BOROUGH = si.BOROUGH


SELECT bx.BOROUGH,
		bx.NEIGHBORHOOD,
		bx.BUILDING_CLASS_CATEGORY,
		bx.NUMBER_OF_SALES,
	 	bx.MINIMUM_SALE_PRICE,
	 	bx.AVERAGE_SALE_PRICE,
	 	bx.MEDIAN_SALE_PRICE,
		bx.MAXIMUM_SALE_PRICE,
		bk.BOROUGH,
		bk.NEIGHBORHOOD,
		bk.BUILDING_CLASS_CATEGORY,
		bk.NUMBER_OF_SALES,
	 	bk.MINIMUM_SALE_PRICE,
	 	bk.AVERAGE_SALE_PRICE,
	 	bk.MEDIAN_SALE_PRICE,
		bk.MAXIMUM_SALE_PRICE,
		mh.BOROUGH,
		mh.NEIGHBORHOOD,
		mh.BUILDING_CLASS_CATEGORY,
		mh.NUMBER_OF_SALES,
	 	mh.MINIMUM_SALE_PRICE,
	 	mh.AVERAGE_SALE_PRICE,
	 	mh.MEDIAN_SALE_PRICE,
		mh.MAXIMUM_SALE_PRICE,
		qn.BOROUGH,
		qn.NEIGHBORHOOD,
		qn.BUILDING_CLASS_CATEGORY,
		qn.NUMBER_OF_SALES,
	 	qn.MINIMUM_SALE_PRICE,
	 	qn.AVERAGE_SALE_PRICE,
	 	qn.MEDIAN_SALE_PRICE,
		qn.MAXIMUM_SALE_PRICE,
		si.BOROUGH,
		si.NEIGHBORHOOD,
		si.BUILDING_CLASS_CATEGORY,
		si.NUMBER_OF_SALES,
	 	si.MINIMUM_SALE_PRICE,
	 	si.AVERAGE_SALE_PRICE,
	 	si.MEDIAN_SALE_PRICE,
		si.MAXIMUM_SALE_PRICE
FROM bronx_sales_prices as bx
LEFT JOIN brookyln_sales_prices as bk ON bx.BOROUGH = bk.BOROUGH
LEFT JOIN manhattan_sales_prices as mh ON bk.BOROUGH = mh.BOROUGH
LEFT JOIN queens_sales_prices as qn ON mh.BOROUGH = qn.BOROUGH
LEFT JOIN staten_island_sales_prices as si ON qn.BOROUGH = si.BOROUGH

-- another attempt
SELECT * FROM bronx_sales_prices
UNION brookyln_sales_prices
SELECT * FROM brookyln_sales_prices
UNION manhattan_sales_prices
SELECT * FROM manhattan_sales_prices
UNION queens_sales_prices
SELECT * FROM queens_sales_prices
UNION staten_island_sales_prices;