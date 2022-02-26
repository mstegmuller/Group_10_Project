-- Create tables from sample housing dataset
CREATE TABLE housing_data (
	price INT NOT NULL,
	area INT NOT NULL,
	bedrooms INT NOT NULL,
	bathrooms INT NOT NULL,
	stories INT NOT NULL,
	mainroad VARCHAR NOT NULL,
	guestroom VARCHAR NOT NULL,
	basement VARCHAR NOT NULL,
	hotwaterheating VARCHAR NOT NULL,
	airconditioning VARCHAR NOT NULL,
	parking INT NOT NULL,
	prefarea VARCHAR NOT NULL,
	furnishingstatus VARCHAR NOT NULL
);

-- Note: sample data is from one csv and formatted as one table. If multiple raw data sources, we may need ERD (primary key, foreign key, etc)


-- View Table
SELECT * FROM housing_data;

-- DROP TABLE housing_data
-- Note: need CASCADE at the end of drop statement if there is an ERD and it is connected to the other tables