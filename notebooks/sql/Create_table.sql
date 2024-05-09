CREATE TABLE city_chart_data (
    "Date" DATE,
    "Cities" TEXT,
    "City name" TEXT,
    "Views" INT,
    PRIMARY KEY ("Date", "Cities")
);
 CREATE TABLE IF NOT EXISTS cities_table_data (
    "Cities" TEXT,
    "City name" TEXT,
    "Geography" TEXT,
    "Geography.1" TEXT,
    "Views" INTEGER,
    "Watch time (hours)" DOUBLE PRECISION,
    "Average view duration" TIME,
    PRIMARY KEY ("Cities")
);
CREATE TABLE IF NOT EXISTS content_type_chart_data (
    "Date" DATE,
    "Content type" VARCHAR(255),
    "Views" INTEGER,
    PRIMARY KEY ("Date", "Content type")
);
CREATE TABLE IF NOT EXISTS content_type_table_data (
    "Content type" TEXT,
    "Views" INTEGER,
    "Watch time (hours)" FLOAT,
    "Average view duration" TIME,
    PRIMARY KEY ("Content type")
);
