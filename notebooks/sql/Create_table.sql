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
CREATE TABLE IF NOT EXISTS device_type_chart_data (
    "Date" DATE,
    "Device type" TEXT,
    "Views" INTEGER,
    PRIMARY KEY ("Date", "Device type")
);
  CREATE TABLE IF NOT EXISTS device_type_table_data (
    "Device type" DATE,
    "Views" INTEGER,
    "Watch time (hours)" FLOAT,
    "Average view duration" TIME,
    PRIMARY KEY ("Device type")
);
CREATE TABLE IF NOT EXISTS geography_chart_data (
"Date" DATE,
"Geography" TEXT,
"Views" INTEGER,
PRIMARY KEY ("Date", "Geography")
);
CREATE TABLE IF NOT EXISTS geography_table_data (
    "Geography" TEXT,
    "Views" INTEGER,
    "Watch time (hours)" FLOAT,
    "Average view duration" TIME,
    PRIMARY KEY ("Geography")
);
CREATE TABLE IF NOT EXISTS new_and_returning_viewers_chart_data (
"Date" DATE,
"New and returning viewers" TEXT,
"Views" INTEGER,
PRIMARY KEY ("Date", "New and returning viewers")
);
CREATE TABLE IF NOT EXISTS new_and_returning_viewers_table_data (
"New and returning viewers" TEXT,
"Views" INTEGER,
"Watch time (hours)" FLOAT,
"Average view duration" TIME,
PRIMARY KEY ("New and returning viewers")
);
CREATE TABLE IF NOT EXISTS operating_system_chart_data (
    "Date" DATE,
    "Operating system" TEXT,
    "Views" INTEGER,
    PRIMARY KEY ("Date", "Operating system")
);
CREATE TABLE IF NOT EXISTS operating_system_table_data (
    "Operating system" TEXT,
    "Views" INTEGER,
    "Watch time (hours)" FLOAT,
    "Average view duration" TIME,
    PRIMARY KEY ("Operating system")
);
