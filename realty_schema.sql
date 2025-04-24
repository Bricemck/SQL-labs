-- enter your schema for apartments, offices and storefronts below
CREATE TABLE apartments (
    id SERIAL PRIMARY KEY,
    apartment_number INTEGER,
    bedrooms INTEGER,
    bathrooms INTEGER,
    address VARCHAR,
    tenant VARCHAR,
    occupied BOOLEAN,
    sq_ft INTEGER,
    price INTEGER
);

CREATE TABLE offices (
    id SERIAL PRIMARY KEY,
    office_number INTEGER,
    floors INTEGER,
    sq_ft INTEGER,
    cubicles INTEGER,
    bathrooms INTEGER,
    address VARCHAR,
    company VARCHAR,
    occupied BOOLEAN,
    price INTEGER
);

CREATE TABLE storefronts (
    id SERIAL PRIMARY KEY,
    address VARCHAR,
    occupied BOOLEAN,
    price INTEGER,
    kitchen BOOLEAN,
    sq_ft INTEGER,
    owner VARCHAR,
    outdoor_seating BOOLEAN
);
