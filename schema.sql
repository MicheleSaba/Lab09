DROP TABLE locations, weathers;

CREATE TABLE locations (
    id SERIAL PRIMARY KEY, 
    search_query VARCHAR(255),
    formatted_query VARCHAR(255),
    latitude NUMERIC(10,7),
    longitude NUMERIC(10,7),
    posting_date DATE NOT NULL DEFAULT CURRENT_DATE;
);

CREATE TABLE weathers (
    id SERIAL PRIMARY KEY, 
    forcast VARCHAR(255),
    time VARCHAR(255),
    location_id INTEGER NOT NULL,
    posting_date DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (location_id) REFERENCES locations (id)
   
);
