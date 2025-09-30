create database ecommerce;
use ecommerce;
-- Creating table for Customers
CREATE TABLE Customers (
    Customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(25),
    email_id VARCHAR(50),
    address VARCHAR(100),
    PRIMARY KEY (Customer_id)
);
INSERT INTO Customers (customer_name, email_id, address) VALUES
('Anya Sharma', 'anya.sharma@example.com', '15 Maple Ave, Mumbai, 400001'),
('Ben Carter', 'ben.carter@email.org', '7 Oak St, London, SW1A 0AA'),
('Chen Li', 'chenli@mail.cn', 'Unit 3B, 28 Pine Rd, Beijing, 100020'),
('Diana Rossi', 'diana.rossi@italianmail.it', 'Via Roma 10, Rome, 00100'),
('Ethan Hall', 'ethanh@webcorp.net', '99 Elm Ln, Sydney, NSW 2000');
-- Creating table for Orders
CREATE TABLE Orders (
Order_id INT AUTO_INCREMENT,
Customer_id INT,
Order_date DATETIME,
Total_amount INT,
PRIMARY KEY (Order_id),
FOREIGN KEY (Customer_id) REFERENCES Customers (Customer_id));
INSERT INTO Orders (Customer_id, Order_date, Total_amount) VALUES
(1, '2025-09-15 10:30:00', 150),
(3, '2025-09-16 14:45:00', 320),
(1, '2025-09-17 09:00:00', 55),
(5, '2025-09-20 18:22:00', 1200),
(2, '2025-09-21 11:15:00', 450);
-- Creating table for Products
CREATE TABLE Products (
Product_id INT AUTO_INCREMENT,
Product_name VARCHAR(50),
Product_price DECIMAL(5,2),
Product_description VARCHAR(100),
PRIMARY KEY (Product_id)
);
INSERT INTO Products (Product_name, Product_price, Product_description) VALUES
('Wireless Mouse', 24.99, 'Ergonomic mouse with silent click for office use.'),
('Mechanical Keyboard', 129.50, 'Full-size RGB keyboard with blue clicky switches.'),
('1TB External SSD', 79.99, 'High-speed solid-state drive for backup and storage.'),
('USB-C Hub', 45.00, '7-in-1 hub with HDMI, USB-A, and power delivery.'),
('Laptop Stand', 19.95, 'Adjustable aluminum stand to improve airflow and ergonomics.');

ALTER TABLE Orders
MODIFY Total_amount DECIMAL(10, 2);
-- Inserting more sample data's for querying 

INSERT INTO Customers (customer_name, email_id, address) VALUES
('Alice Johnson', 'alice.j@corp.com', '101 Pine Ln, New York, 10001'),
('Bob Williams', 'bob.w@mail.net', '205 Oak Dr, Los Angeles, 90012'),
('Charlie Brown', 'charlie.b@web.org', '310 Cedar Ave, Chicago, 60601'),
('Dana Smith', 'dana.s@email.co', '415 Birch Blvd, Houston, 77002'),
('Ethan Davis', 'ethan.d@info.us', '520 Elm Way, Phoenix, 85004'),
('Fiona Garcia', 'fiona.g@tech.biz', '625 Maple St, Philadelphia, 19106'),
('George Hall', 'george.h@data.io', '730 Willow Rd, San Antonio, 78205'),
('Hannah Lee', 'hannah.l@media.com', '835 Spruce Pkwy, San Diego, 92101'),
('Ivan Petrov', 'ivan.p@global.net', '940 Aspen Ct, Dallas, 75201'),
('Jasmine Chen', 'jasmine.c@design.org', '1045 Poplar Cir, San Jose, 95113'),
('Kevin Miller', 'kevin.m@soft.us', '1150 Cherry Way, Austin, 78701'),
('Lila Scott', 'lila.s@online.co', '1255 Walnut Ln, Jacksonville, 32202'),
('Mike King', 'mike.k@mobile.biz', '1360 Redwood Pl, Fort Worth, 76102'),
('Nina Lopez', 'nina.l@cloud.io', '1465 Hazel Ave, Columbus, 43215'),
('Oscar Perez', 'oscar.p@start.com', '1570 Sycamore Blvd, Charlotte, 28202'),
('Pamela White', 'pamela.w@pro.net', '1675 Cypress Dr, San Francisco, 94103'),
('Quentin Adams', 'quentin.a@dev.org', '1780 Elderberry Rd, Indianapolis, 46204'),
('Rachel Young', 'rachel.y@smart.us', '1885 Dogwood Way, Seattle, 98101'),
('Sam Wilson', 'sam.w@shop.co', '1990 Fir Ln, Denver, 80202'),
('Tina Baker', 'tina.b@secure.biz', '2095 Hemlock Ct, Washington, 20004'),
('Umar Farooq', 'umar.f@biz.io', '2200 Juniper Pl, Boston, 02108'),
('Vera Chang', 'vera.c@bank.com', '2305 Laurel Cir, El Paso, 79901'),
('Will Taylor', 'will.t@trade.net', '2410 Magnolia Ave, Detroit, 48226'),
('Xena Rodriguez', 'xena.r@agency.org', '2515 Mulberry Dr, Nashville, 37201'),
('Yara Hussein', 'yara.h@media.us', '2620 Olive Blvd, Portland, 97204'),
('Zane Vance', 'zane.v@design.co', '2725 Peach Way, Memphis, 38103'),
('Anna Bell', 'anna.b@soft.biz', '2830 Quince Ln, Oklahoma City, 73102'),
('Brian Clay', 'brian.c@online.io', '2935 Rowan Rd, Las Vegas, 89101'),
('Cynthia Day', 'cynthia.d@mobile.com', '3040 Saffron Ct, Louisville, 40202'),
('David Ellis', 'david.e@cloud.net', '3145 Tulip Ave, Baltimore, 21201'),
('Eva Fox', 'eva.f@start.org', '3250 Umbrella Dr, Milwaukee, 53202'),
('Fred Grey', 'fred.g@pro.us', '3355 Vine Blvd, Albuquerque, 87102'),
('Gail Hunt', 'gail.h@dev.co', '3460 Wisteria Ln, Tucson, 85701'),
('Henry Iyer', 'henry.i@smart.biz', '3565 Yew Way, Fresno, 93706'),
('Ivy Jones', 'ivy.j@shop.io', '3670 Zinnia St, Sacramento, 95814'),
('Jack Klein', 'jack.k@secure.com', '3775 Almond Pl, Mesa, 85201'),
('Kim Long', 'kim.l@biz.net', '3880 Bamboo Cir, Kansas City, 64105'),
('Leo Moon', 'leo.m@bank.org', '3985 Cypress Ave, Atlanta, 30303'),
('Mia Nash', 'mia.n@trade.us', '4090 Dahlia Dr, Omaha, 68102'),
('Noah Ortiz', 'noah.o@agency.co', '4195 Elder Ln, Raleigh, 27601'),
('Olivia Park', 'olivia.p@media.biz', '4300 Fern Rd, Miami, 33130'),
('Peter Quinn', 'peter.q@design.io', '4405 Garden Way, Cleveland, 44114'),
('Ruby Ross', 'ruby.r@soft.com', '4510 Holly St, New Orleans, 70112'),
('Sean Stone', 'sean.s@online.net', '4615 Iris Blvd, Tampa, 33602'),
('Tess Vance', 'tess.v@mobile.org', '4720 Jasmine Ct, Aurora, 80014'),
('Victor West', 'victor.w@cloud.us', '4825 Kale Ave, St. Louis, 63101'),
('Wendy Xu', 'wendy.x@start.co', '4930 Lotus Pl, Pittsburgh, 15219'),
('Yasin Zaki', 'yasin.z@pro.biz', '5035 Mango Cir, Cincinnati, 45202'),
('Zara Alami', 'zara.a@dev.io', '5140 Nectarine Rd, Orlando, 32801'),
('Adam Hunt', 'adam.h@smart.com', '5245 Orange Way, Newark, 07102');

INSERT INTO Products (Product_name, Product_price, Product_description) VALUES
('4K Monitor 27"', 399.99, '27-inch IPS panel with HDR support.'),
('Ergonomic Chair', 299.00, 'Adjustable lumbar support and mesh back.'),
('Noise Cancelling Headphones', 199.50, 'Over-ear headphones with 30-hour battery.'),
('Portable Bluetooth Speaker', 59.95, 'Waterproof speaker with deep bass.'),
('Electric Scooter', 450.00, 'Foldable scooter with 20 mile range.'),
('Smart Watch', 149.99, 'Fitness tracker with heart rate monitor.'),
('Espresso Machine', 350.75, 'Automatic espresso machine with milk frother.'),
('Robotic Vacuum', 215.00, 'Smart navigation, ideal for pet hair.'),
('Home Security Camera', 65.99, '1080p Wi-Fi camera with night vision.'),
('Gaming Laptop (High-end)', 189.00, 'RTX 4080, i9, 32GB RAM.'),
('External Hard Drive 4TB', 110.50, 'Reliable backup storage.'),
('Wireless Charging Pad', 29.99, 'Fast charging for all Qi-enabled devices.'),
('Air Purifier', 95.00, 'HEPA filter removes 99.97% of airborne particles.'),
('Weighted Blanket', 69.95, '15 lb blanket for anxiety and sleep.'),
('Digital Drawing Tablet', 175.00, 'Pressure-sensitive tablet for artists.'),
('Streaming Stick 4K', 49.99, 'Access all major streaming services.'),
('Smart Light Bulb Pack', 35.00, 'Dimmable color-changing LED bulbs (4 pack).'),
('Mesh Wi-Fi System', 199.00, 'Covers up to 5000 sq ft with fast Wi-Fi.'),
('Dumbbell Set (50lb)', 89.99, 'Adjustable weights for home workout.'),
('Portable Projector', 249.00, 'Full HD projector with built-in battery.'),
('Cold Press Juicer', 125.50, 'Extracts maximum nutrients from fruits.'),
('Electric Toothbrush', 45.99, 'Sonic cleaning with pressure sensor.'),
('E-Reader Tablet', 119.00, 'Glare-free screen for reading.'),
('Backpack for Laptops', 75.00, 'Water-resistant with padded laptop sleeve.'),
('Coffee Grinder', 39.99, 'Electric burr grinder with multiple settings.'),
('Instant Pot', 89.00, 'Multi-cooker for quick meals.'),
('Drone with Camera', 349.99, 'Beginner drone with HD video.'),
('Electric Kettle', 29.50, 'Fast boil stainless steel kettle.'),
('Standing Desk Converter', 160.00, 'Turns any desk into a standing desk.'),
('Portable Monitor 15"', 179.99, 'USB-C powered second screen.'),
('Action Camera 5K', 320.00, 'Waterproof camera for adventure sports.'),
('Smart Scale', 39.99, 'Measures weight, BMI, and body fat.'),
('Home Weather Station', 79.50, 'Indoor/outdoor temperature and forecast.'),
('Electric Hand Mixer', 35.00, '5-speed mixer with whisk attachments.'),
('Virtual Reality Headset', 499.00, 'Standalone VR gaming system.'),
('Portable Power Bank', 49.95, '20,000mAh external battery pack.'),
('Mini Fridge', 115.00, '4-liter capacity, perfect for a desk.'),
('Outdoor Security Light', 55.99, 'Motion-activated solar LED light.'),
('Smart Doorbell', 139.00, 'Video doorbell with two-way talk.'),
('Professional Microphone', 99.00, 'USB condenser mic for podcasts and streaming.'),
('Digital Photo Frame', 69.99, 'Wi-Fi enabled, remote photo upload.'),
('Acoustic Guitar', 189.50, 'Starter full-size acoustic guitar.'),
('Yoga Mat Deluxe', 39.00, 'Extra thick, non-slip mat.'),
('Electric Blanket King', 85.99, 'Dual zone heated blanket.'),
('Portable Espresso Maker', 99.00, 'Handheld, battery-powered espresso.'),
('Rechargeable Hand Warmer', 25.00, 'Electric hand warmer and power bank.'),
('Smart Plug 4 Pack', 49.95, 'Wi-Fi controlled outlets.'),
('LED Desk Lamp', 45.00, 'Dimmable lamp with color temperature control.'),
('Fitness Resistance Bands', 19.99, 'Set of 5 different resistance bands.'),
('Digital Kitchen Scale', 20.50, 'High-precision kitchen scale.');

INSERT INTO Orders (Customer_id, Order_date, Total_amount) VALUES
(10, '2025-08-28 15:30:00', 45.99),
(5, '2025-08-28 18:00:00', 129.50),
(22, '2025-08-29 09:15:00', 89.99),
(45, '2025-08-29 11:45:00', 19.99),
(31, '2025-08-30 14:20:00', 350.75),
(18, '2025-08-30 17:00:00', 249.00),
(3, '2025-08-31 10:55:00', 65.99),
(1, '2025-09-01 12:30:00', 199.50),
(49, '2025-09-01 16:10:00', 79.99),
(15, '2025-09-02 09:00:00', 110.50),
(7, '2025-09-02 11:35:00', 19.95),
(25, '2025-09-03 13:00:00', 49.99),
(40, '2025-09-03 15:40:00', 450.00),
(12, '2025-09-04 08:50:00', 35.00),
(29, '2025-09-04 14:10:00', 125.50),
(4, '2025-09-05 17:30:00', 29.50),
(33, '2025-09-06 09:45:00', 149.99),
(20, '2025-09-06 12:20:00', 1899.00),
(11, '2025-09-07 14:55:00', 59.95),
(48, '2025-09-07 16:30:00', 115.00),
(9, '2025-09-08 09:05:00', 399.99),
(2, '2025-09-08 11:50:00', 49.95),
(39, '2025-09-09 13:25:00', 75.00),
(27, '2025-09-09 15:00:00', 299.00),
(14, '2025-09-10 08:30:00', 215.00),
(44, '2025-09-10 10:45:00', 69.95),
(6, '2025-09-11 12:15:00', 175.00),
(36, '2025-09-11 14:00:00', 39.99),
(24, '2025-09-12 16:20:00', 349.99),
(41, '2025-09-12 18:00:00', 95.00),
(8, '2025-09-13 09:30:00', 160.00),
(35, '2025-09-13 11:00:00', 179.99),
(17, '2025-09-14 13:10:00', 499.00),
(43, '2025-09-14 15:50:00', 85.99),
(26, '2025-09-15 08:40:00', 320.00),
(50, '2025-09-15 11:25:00', 79.50),
(13, '2025-09-16 13:50:00', 45.00),
(30, '2025-09-16 15:15:00', 55.99),
(16, '2025-09-17 10:30:00', 139.00),
(47, '2025-09-17 12:45:00', 99.00),
(21, '2025-09-18 14:20:00', 69.99),
(42, '2025-09-18 16:00:00', 189.50),
(28, '2025-09-19 09:50:00', 39.00),
(46, '2025-09-19 11:30:00', 99.00),
(19, '2025-09-20 13:05:00', 25.00),
(37, '2025-09-20 15:40:00', 49.95),
(23, '2025-09-21 17:10:00', 45.00),
(32, '2025-09-21 19:30:00', 19.99),
(34, '2025-09-22 09:00:00', 20.50),
(38, '2025-09-22 11:00:00', 99.99); 


-- Get the total amount of all orders placed by each customer.

SELECT c.Customer_name, SUM(o.Total_amount) AS Total_value 
FROM orders o
JOIN customers c
ON c.Customer_id = o.Customer_id
GROUP BY c.Customer_id, c.customer_name
ORDER BY Total_value DESC;

-- Retrieve all customers who have placed an order in the last 30 days 

SELECT DISTINCT c.customer_name
FROM Orders o
JOIN Customers c ON c.Customer_id = o.Customer_id
WHERE o.Order_date >= NOW() - INTERVAL 30 DAY; 

-- Update the price of Product C to 45.00.

UPDATE Products
SET Product_price = 45.00
WHERE Product_id = 2;

-- Add a new column discount to the products table.

ALTER TABLE Products
ADD COLUMN discount DECIMAL(4, 2);

-- Retrieve the top 3 products with the highest price.

SELECT Product_name, Product_price
FROM Products
ORDER BY Product_price DESC
LIMIT 3;

-- Creating table for OrderDetails (The 'order items' table) , Normalizing the database by creating a separate table for order items and updating the orders table to reference the order_items table.

CREATE TABLE OrderDetails (
    OrderDetails_id INT AUTO_INCREMENT,
    Order_id INT,
    Product_id INT,
    Quantity INT,
    PriceAtOrder DECIMAL(10, 2), -- Stores the price the product was sold at (for historical accuracy)
    PRIMARY KEY (OrderDetails_id),
    FOREIGN KEY (Order_id) REFERENCES Orders (Order_id),
    FOREIGN KEY (Product_id) REFERENCES Products (Product_id)
);

INSERT INTO OrderDetails (Order_id, Product_id, Quantity, PriceAtOrder) VALUES
-- Order 1 (Customer 1, Total: 150.00)
(1, 1, 3, 24.99),    -- 3 x Wireless Mouse (3 * 24.99 = 74.97)
(1, 4, 1, 45.00),    -- 1 x USB-C Hub (45.00)
(1, 5, 3, 10.01),    -- 3 x Generic Item (3 * 10.01 = 30.03). Note: Adjusting prices/items to match the $150.00 total: 74.97 + 45.00 + 30.03 = 150.00

-- Order 2 (Customer 3, Total: 320.00)
(2, 2, 2, 45.00),    -- 2 x Mechanical Keyboard (2 * 45.00 = 90.00)
(2, 3, 3, 76.67),    -- 3 x 1TB External SSD (3 * 76.67 = 230.01). Note: 90.00 + 230.01 ≈ 320.01

-- Order 3 (Customer 1, Total: 55.00)
(3, 1, 1, 24.99),    -- 1 x Wireless Mouse
(3, 5, 2, 15.00),    -- 2 x Laptop Stand (2 * 15.00 = 30.00). Note: 24.99 + 30.00 = 54.99 ≈ 55.00

-- Order 4 (Customer 5, Total: 1200.00)
(4, 2, 5, 45.00),    -- 5 x Mechanical Keyboard (5 * 45.00 = 225.00)
(4, 4, 20, 48.75),   -- 20 x USB-C Hub (20 * 48.75 = 975.00). Note: 225.00 + 975.00 = 1200.00

-- Order 5 (Customer 2, Total: 450.00)
(5, 3, 5, 90.00);    -- 5 x 1TB External SSD (5 * 90.00 = 450.00)

-- Get the names of customers who have ordered Product A.

SELECT DISTINCT c.customer_name
FROM Customers c
JOIN Orders o  ON c.Customer_id = o.Customer_id
JOIN OrderDetails od  ON o.Order_id  = od.Order_id
WHERE Product_id = 2;

-- Join the orders and customers tables to retrieve the customer's name and order date for each order. 

SELECT c.customer_name, o.order_date, o.Order_id
FROM Orders o
JOIN Customers c ON o.Customer_id = c.Customer_id
ORDER BY o.order_date DESC; --  to see the newest orders first

-- Retrieve the orders with a total amount greater than 150.00.

SELECT Order_id, Total_amount
FROM Orders
WHERE Total_amount > 150;

-- Retrieve the average total of all orders.

SELECT AVG(Total_amount) AS Average_Order_Value
FROM Orders;