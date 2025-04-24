-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it

-- Create a computers table


-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports
CREATE TABLE computers ( id serial, make varchar(20), model varchar(20), cpu_speed varchar(20), memory_size int,
price decimal, release_date timestamp, photo_url text, storage_amount varchar(20), number_usb_ports int, number_firewire_ports int,
number_thunderbolt_ports int );

-- Insert 4 computers into the computers table
INSERT INTO computers (
    make, model, cpu_speed, memory_size, price, release_date, photo_url, 
    storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports
)
VALUES 
  ('ByteForge', 'X9000', '5.2GHz', 64, 2999.99, '2025-03-01', 'https://byteforge.com/x9000.jpg', '2TB SSD', 6, 2, 4),
  ('FutureTech', 'Visionary Z1', '4.8GHz', 32, 1899.50, '2025-01-20', 'https://futuretech.com/z1.jpg', '1TB SSD', 4, 1, 3),
  ('Cheaptronic', 'BudgetBox', '3.2GHz', 8, 499.99, '2024-11-11', 'https://cheaptronic.com/budgetbox.jpg', '512GB HDD', 3, 0, 0),
  ('GamerGod', 'Inferno GX', '6.0GHz', 128, 4999.00, '2025-04-10', 'https://gamergod.com/infernogx.jpg', '4TB NVMe SSD', 8, 1, 6);


-- Select all entries from the computers table
SELECT * FROM computers;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
