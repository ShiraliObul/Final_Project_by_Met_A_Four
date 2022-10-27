CREATE TABLE NYC_CRASH_CYCLIST (
  COLLISION_ID INTEGER,
  DATES DATE,
  TIMES TIME,
  BOROUGH VARCHAR,
  ZIP_CODE INTEGER,
  LATITUDE FLOAT,
  LONGITUDE FLOAT,
  NUMBER_OF_PERSONS_INJURED INTEGER,
  NUMBER_OF_PERSONS_KILLED INTEGER,
  NUMBER_OF_PEDESTRIANS_INJURED INTEGER,
  NUMBER_OF_PEDESTRIANS_KILLED INTEGER,
  NUMBER_OF_CYCLIST_INJURED INTEGER,
  NUMBER_OF_CYCLIST_KILLED INTEGER,
  NUMBER_OF_MOTORIST_INJURED INTEGER,
  NUMBER_OF_MOTORIST_KILLED INTEGER,
  CONTRIBUTING_FACTOR_VEHICLE_1 VARCHAR,
  CONTRIBUTING_FACTOR_VEHICLE_2 VARCHAR,
  VEHICLE_TYPE_CODE_1 VARCHAR,
  VEHICLE_TYPE_CODE_2 VARCHAR,
  STREET VARCHAR,
  BIKE_LANE INTEGER,
  DAY_OF_WEEK VARCHAR,
  MONTH VARCHAR,
 );
 
 Create table NYC_WEATHER_DATA
  DATES DATE,
  TIMES TIME,
  TEMPERATURE FLOAT,
  VISIBILITY INTEGER,
  HUMIDITY INTEGER,
  WIND_SPEED FLOAT,
  WEATHER_MAIN VARCHAR
  
);

CREATE TABLE NYC_BOROUGH_ZIPCODE (
  BOROUGH VARCHAR,
  FROM_ZIPCODE INTEGER,
  TO_ZIPCODE INTEGER
);

-- Joining Weather with Crash

select c.*, w.*
from nyc_crash_cyclist c left join 
nyc_weather_data w
on c.times = w.times and c.dates = w.dates

