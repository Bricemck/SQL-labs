--enter your seed data below
-- Insert data into apartments
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES 
(101, 2, 1, '123 Elm St, Apt 101', 'Alice Johnson', TRUE, 850, 1200),
(203, 3, 2, '456 Maple Ave, Apt 203', 'Carlos Rivera', TRUE, 1100, 1600),
(305, 1, 1, '789 Oak Dr, Apt 305', NULL, FALSE, 600, 950);

-- Insert data into offices
INSERT INTO offices (office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price)
VALUES 
(12, 2, 3000, 20, 2, '100 Tech Park Dr', 'Innova Solutions', TRUE, 7500),
(34, 1, 1500, 10, 1, '200 Biz Plaza Ln', NULL, FALSE, 4000),
(56, 3, 4500, 30, 3, '300 Enterprise Way', 'NextGen Corp', TRUE, 9800);

-- Insert data into storefronts
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating)
VALUES 
('555 Market St', TRUE, 5200, TRUE, 1800, 'Luna Garcia', TRUE),
('789 Commerce Blvd', FALSE, 3900, FALSE, 1400, 'George Tanaka', FALSE),
('101 Central Ave', TRUE, 6000, TRUE, 2000, 'Ella Thompson', TRUE);

-- Ok so I added these without thinking because I'm working off 4 hours of sleep, but this should load into database
psql -d realty_db -f realty_seed.sql

