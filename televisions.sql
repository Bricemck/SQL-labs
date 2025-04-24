-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it


-- Create a televisions table


--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
CREATE TABLE televisions ( id serial, model_name varchar(20), screen_size int,
resolution int, price decimal, release_date timestamp, photo_url text );

-- Insert 4 televisions into the tv_models table
INSERT INTO televisions ( model_name, screen_size, resolution, price, release_date, photo_url )
VALUES ('SuperView 5000', 55, 4000, 799.99, '2025-04-01', 'https://example.com/tv.jpg'),
('BachelorView 6000', 95, 8500, 9999.99, '2025-04-01', 'https://toomanypixels.com/tv.jpg'),
('BudgetView 2000', 45, 3900, 399.99, '2025-04-01', 'https://daveramsey.com/tv.jpg'),
('StonerView 420', 69, 69420, 420.99, '2025-04-01', 'https://legalizeit.com/tv.jpg');

-- Select all entries from the tv_models table
SELECT * FROM televisions;


-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
