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
CREATE TABLE IF NOT EXISTS sharing_service_chart_data (
    "Date" DATE,
    "Sharing service" TEXT,
    "Shares" INTEGER,
    PRIMARY KEY ("Date", "Sharing service")
);
CREATE TABLE IF NOT EXISTS sharing_service_table_data (
"Sharing service" TEXT,
"Shares" INTEGER,
PRIMARY KEY ("Sharing service")
);
CREATE TABLE IF NOT EXISTS subscription_source_chart_data (
    "Date" DATE,
    "Subscription source" TEXT,
    "Subscribers" INTEGER,
    PRIMARY KEY ("Date", "Subscription source")
);
CREATE TABLE IF NOT EXISTS subscription_source_table_data (
    "Subscription source" TEXT,
    "Subscribers" INTEGER,
    "Subscribers gained" INTEGER,
    "Subscribers lost" INTEGER,
    PRIMARY KEY ("Subscription source")
);
CREATE TABLE IF NOT EXISTS subscription_status_chart_data (
    "Date" DATE,
    "Subscription status" TEXT,
    "Views" INTEGER,
    PRIMARY KEY ("Date", "Subscription status")
);
 CREATE TABLE IF NOT EXISTS subscription_status_table_data (
    "Subscription status" TEXT,
    "Views" INTEGER,
    "Watch time (hours)" TIME,
    "Average view duration" TIME,
    PRIMARY KEY ("Subscription status")
);
CREATE TABLE IF NOT EXISTS traffic_source_chart_data (
    "Date" DATE,
    "Traffic source" TEXT,
    "Views" INTEGER,
    PRIMARY KEY ("Date", "Traffic source")
);
CREATE TABLE IF NOT EXISTS traffic_source_table_data (
    "Traffic source" TEXT,
    "Views" INTEGER,
    "Watch time (hours)" FLOAT,
    "Average view duration" TIME,
    "Impressions" FLOAT,
    "Impressions click-through rate (%)" FLOAT,
    PRIMARY KEY ("Traffic source")
);
CREATE TABLE IF NOT EXISTS viewer_age_statistics (
    "Viewer age," VARCHAR(50) PRIMARY KEY,
    "Views (%)" FLOAT,
    "Average view duration" INTERVAL,
    "Average percentage viewed (%)" FLOAT,
    "Watch time (hours) (%)" FLOAT
);
CREATE TABLE IF NOT EXISTS viewer_gender_stats (
    "Viewer gender" VARCHAR(50),
    "Views (%)"FLOAT,
    "Average view duration" TIME,
    "Average percentage viewed (%)" FLOAT,
    "Watch time (hours) (%)" FLOAT
);
CREATE TABLE IF NOT EXISTS viewership_data (
    "Date" TEXT,
    "Views" INT,
    "Watch time (hours)" FLOAT,
    "Average view duration" TIME
);