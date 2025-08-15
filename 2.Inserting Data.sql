-- Users
INSERT INTO Users 
(fullName, email, phoneNumber) 
VALUES
('Ananya Mehta', 'ananya@example.com', '9876543210'),
('Ravi Kumar', 'ravi@example.com', '9123456780'),
('Meera Shah', 'meera@example.com', '9321456780'),
('Aditya Jain', 'aditya@example.com', '9887654321'),
('Priya Singh', 'priya@example.com', '9988776655'),
('Rahul Verma', 'rahul@example.com', '9765432109'),
('Ishita Rao', 'ishita@example.com', '9845612370'),
('Kunal Patel', 'kunal@example.com', '9687456231'),
('Sneha Kapoor', 'sneha@example.com', '9786543214'),
('Arjun Nair', 'arjun@example.com', '9678452310');
select * from dbo.Users;

-- Vendors
INSERT INTO Vendors (vendorName, vendorEmail) VALUES
('FreshMart', 'contact@freshmart.com'),
('DailyGroceries', 'support@dailygroceries.com'),
('GreenBasket', 'hello@greenbasket.com'),
('QuickBuy', 'sales@quickbuy.com'),
('HyperLocalHub', 'help@hyperlocalhub.com');
select * from dbo.Vendors;

-- Product Categories
INSERT INTO ProductCategories (CategoryName) VALUES
('Fruits & Vegetables'),           -- 1
('Dairy'),                         -- 2
('Bakery'),                        -- 3
('Snacks'),                        -- 4
('Beverages'),                     -- 5
('Staples & Grains'),             -- 6
('Breakfast & Instant Food'),     -- 7
('Sweets & Chocolates'),          -- 8
('Personal Care'),                -- 9
('Home Care'),                    --10
('Baby Care'),                    --11
('Meat & Seafood'),               --12
('Frozen Food'),                  --13
('Cleaning & Household'),         --14
('Health & Wellness'),            --15
('Pet Care'),                     --16
('Beauty & Hygiene'),             --17
('Pooja Needs');                  --18
select * from dbo.ProductCategories;

-- Products
INSERT INTO Products (name, description, categoryId, price)
VALUES
('Apple', 'Fresh red apples 1kg', 1, 120.00),
('Spinach', 'Green spinach bunch 250g', 1, 25.00),
('Tomato', 'Farm tomatoes 1kg', 1, 40.00),
('Milk', 'Full cream milk 1L pack', 2, 65.00),
('Paneer', 'Fresh paneer 200g', 2, 90.00),
('Curd', 'Natural curd 500g cup', 2, 45.00),
('Brown Bread', 'Whole wheat bread 400g', 3, 35.00),
('Croissant', 'Butter croissant pack of 2', 3, 55.00),
('Chips', 'Salted potato chips 100g', 4, 20.00),
('Masala Munch', 'Spicy snack pack 90g', 4, 15.00),
('Nachos', 'Cheese nachos 150g', 4, 50.00),
('Mango Juice', 'Mango drink 1L tetra pack', 5, 80.00),
('Cold Coffee', 'Chilled coffee bottle 250ml', 5, 60.00),
('Green Tea', 'Detox green tea 25 bags', 5, 110.00),
('Basmati Rice', 'Premium rice 5kg', 6, 450.00),
('Toor Dal', 'Unpolished toor dal 1kg', 6, 140.00),
('Wheat Flour', 'Chakki atta 5kg', 6, 250.00),
('Cornflakes', 'Breakfast cornflakes 500g', 7, 120.00),
('Instant Noodles', 'Masala noodles 70g', 7, 45.00),
('Oats', 'Rolled oats 1kg pack', 7, 160.00),
('Dairy Milk', 'Chocolate bar 50g', 8, 30.00),
('Soan Papdi', 'Indian sweet 250g box', 8, 90.00),
('Kaju Katli', 'Cashew sweet 500g', 8, 240.00),
('Toothpaste', 'Herbal toothpaste 150g', 9, 75.00),
('Shampoo', 'Hairfall shampoo 340ml', 9, 180.00),
('Hand Wash', 'Liquid handwash 250ml', 9, 55.00),
('Room Freshener', 'Floral room spray 200ml', 10, 110.00),
('Toilet Cleaner', 'Disinfectant liquid 500ml', 10, 90.00),
('Baby Diapers', 'Medium size pack of 20', 11, 480.00),
('Baby Wipes', 'Wet wipes 72 pulls', 11, 90.00),
('Chicken Curry Cut', 'Fresh chicken 500g', 12, 320.00),
('Fish Fillet', 'Boneless raw fish 500g', 12, 275.00),
('Frozen Paratha', 'Plain paratha pack of 5', 13, 110.00),
('French Fries', 'Frozen fries 750g', 13, 140.00),
('Floor Cleaner', 'Lemon floor cleaner 1L', 14, 170.00),
('Dishwash Gel', 'Dishwashing liquid 500ml', 14, 75.00),
('Vitamin C Tablets', 'Immunity booster 60 tabs', 15, 210.00),
('Protein Powder', 'Whey protein 250g jar', 15, 350.00),
('Dog Food', 'Dry dog food 1kg', 16, 290.00),
('Cat Litter', 'Odor control 5kg', 16, 210.00),
('Face Wash', 'Oil-free face wash 100ml', 17, 130.00),
('Lip Balm', 'Moisturizing stick 4.5g', 17, 45.00),
('Agarbatti', 'Sandalwood incense 40 sticks', 18, 30.00),
('Camphor', 'Pure camphor tablets 100g', 18, 50.00),
('Ghee Diya Batti', 'Ghee cotton wicks 50 pcs', 18, 60.00),
('Banana', 'Yellow banana 1 dozen', 1, 55.00),
('Butter', 'Salted butter 100g', 2, 55.00),
('Garlic Bread', 'Ready garlic bread 250g', 3, 60.00),
('Soft Drink', 'Cola drink 750ml bottle', 5, 45.00),
('Chana Dal', 'Split Bengal gram 1kg', 6, 110.00),
('Poha', 'Flattened rice 1kg', 7, 60.00),
('Energy Bar', 'Peanut protein bar 50g', 15, 80.00);
select * from dbo.Products;


--inventory
INSERT INTO Inventory (VendorID, ProductID, QuantityAvailable) VALUES
(1, 1, 30), (2, 1, 25), (3, 1, 20), 
(1, 2, 50), (4, 2, 35), 
(2, 3, 40), (5, 3, 15), 
(1, 4, 45), 
(3, 5, 60), (4, 5, 55), 
(2, 6, 25), 
(1, 7, 20), (5, 7, 10), 
(4, 8, 30), 
(3, 9, 40), (5, 9, 50), 
(2, 10, 35), 
(1, 11, 60), 
(3, 12, 20), (4, 12, 25), 
(5, 13, 10), 
(2, 14, 45), 
(1, 15, 55), 
(4, 16, 30), 
(3, 17, 25), 
(2, 18, 20), 
(5, 19, 15), 
(1, 20, 50), (2, 20, 35), 
(3, 21, 40), 
(4, 22, 30), (5, 22, 20), 
(1, 23, 25), 
(2, 24, 45), 
(3, 25, 60), 
(4, 26, 55), (5, 26, 50), 
(1, 27, 35), 
(2, 28, 30), 
(3, 29, 25), 
(4, 30, 20), 
(5, 31, 15), 
(1, 32, 40), 
(2, 33, 60), 
(3, 34, 50), 
(4, 35, 30), (5, 35, 25), 
(1, 36, 20), 
(2, 37, 45), 
(3, 38, 35), 
(4, 39, 25), 
(5, 40, 15), 
(1, 41, 40), 
(2, 42, 30), 
(3, 43, 20), 
(4, 44, 10), 
(5, 45, 50), 
(1, 46, 60), 
(2, 47, 55), 
(3, 48, 45), 
(4, 49, 35), 
(5, 50, 25), 
(1, 51, 30), 
(2, 52, 40);
select * from dbo.Inventory;

--address
INSERT INTO Addresses (UserID, AddressLine, City, State, Pincode) VALUES
(1, 'Nagar Palika Road', 'New Tehri', 'Uttarakhand', '249001'),
(2, 'Near Bus Stand', 'New Tehri', 'Uttarakhand', '249001'),
(3, 'Kandikhal Road', 'Pauri', 'Uttarakhand', '246001'),
(4, 'Main Market Area', 'Chamba', 'Uttarakhand', '249145'),
(5, 'Kotdwar Road', 'Pauri', 'Uttarakhand', '246001'),
(6, 'Tehsil Road', 'Ghansali', 'Uttarakhand', '249155'),
(7, 'District HQ Area', 'Tehri', 'Uttarakhand', '249001'),
(8, 'Upper Bazar', 'Chamba', 'Uttarakhand', '249145'),
(9, 'Near Block Office', 'Ghansali', 'Uttarakhand', '249155'),
(10, 'Beriakh Khal', 'Pauri', 'Uttarakhand', '246001'),
(1, 'Railway Road', 'Rishikesh', 'Uttarakhand', '249201'),
(2, 'GMS Road', 'Dehradun', 'Uttarakhand', '248001'),
(3, 'Clock Tower Area', 'Dehradun', 'Uttarakhand', '248001'),
(4, 'Shyampur', 'Haridwar', 'Uttarakhand', '249408'),
(5, 'BHEL Township', 'Haridwar', 'Uttarakhand', '249403'),
(6, 'Tapovan Area', 'Rishikesh', 'Uttarakhand', '249192'),
(7, 'Awas Vikas', 'Rishikesh', 'Uttarakhand', '249201'),
(8, 'Dalanwala', 'Dehradun', 'Uttarakhand', '248001'),
(9, 'Ranipur More', 'Haridwar', 'Uttarakhand', '249403'),
(10, 'ISBT Area', 'Dehradun', 'Uttarakhand', '248002');
select * from dbo.Addresses;


INSERT INTO Orders (UserID, VendorID, OrderDate, TotalAmount) VALUES
(1, 1, GETDATE(), 100.00),
(2, 2, GETDATE(), 110.00),
(3, 3, GETDATE(), 120.00),
(4, 4, GETDATE(), 130.00),
(5, 5, GETDATE(), 140.00),
(6, 1, GETDATE(), 150.00),
(7, 2, GETDATE(), 160.00),
(8, 3, GETDATE(), 170.00),
(9, 4, GETDATE(), 180.00),
(10, 5, GETDATE(), 190.00),
(1, 1, GETDATE(), 200.00),
(2, 2, GETDATE(), 210.00),
(3, 3, GETDATE(), 220.00),
(4, 4, GETDATE(), 230.00),
(5, 5, GETDATE(), 240.00),
(6, 1, GETDATE(), 250.00),
(7, 2, GETDATE(), 260.00),
(8, 3, GETDATE(), 270.00),
(9, 4, GETDATE(), 280.00),
(10, 5, GETDATE(), 290.00),
(1, 1, GETDATE(), 100.00),
(2, 2, GETDATE(), 110.00),
(3, 3, GETDATE(), 120.00),
(4, 4, GETDATE(), 130.00),
(5, 5, GETDATE(), 140.00),
(6, 1, GETDATE(), 150.00),
(7, 2, GETDATE(), 160.00),
(8, 3, GETDATE(), 170.00),
(9, 4, GETDATE(), 180.00),
(10, 5, GETDATE(), 190.00),
(1, 1, GETDATE(), 200.00),
(2, 2, GETDATE(), 210.00),
(3, 3, GETDATE(), 220.00),
(4, 4, GETDATE(), 230.00),
(5, 5, GETDATE(), 240.00),
(6, 1, GETDATE(), 250.00),
(7, 2, GETDATE(), 260.00),
(8, 3, GETDATE(), 270.00),
(9, 4, GETDATE(), 280.00),
(10, 5, GETDATE(), 290.00),
(1, 1, GETDATE(), 100.00),
(2, 2, GETDATE(), 110.00),
(3, 3, GETDATE(), 120.00),
(4, 4, GETDATE(), 130.00),
(5, 5, GETDATE(), 140.00),
(6, 1, GETDATE(), 150.00),
(7, 2, GETDATE(), 160.00),
(8, 3, GETDATE(), 170.00),
(9, 4, GETDATE(), 180.00),
(10, 5, GETDATE(), 190.00),
(1, 1, GETDATE(), 200.00),
(2, 2, GETDATE(), 210.00),
(3, 3, GETDATE(), 220.00),
(4, 4, GETDATE(), 230.00),
(5, 5, GETDATE(), 240.00),
(6, 1, GETDATE(), 250.00),
(7, 2, GETDATE(), 260.00),
(8, 3, GETDATE(), 270.00),
(9, 4, GETDATE(), 280.00),
(10, 5, GETDATE(), 290.00),
(1, 1, GETDATE(), 100.00),
(2, 2, GETDATE(), 110.00),
(3, 3, GETDATE(), 120.00),
(4, 4, GETDATE(), 130.00),
(5, 5, GETDATE(), 140.00),
(6, 1, GETDATE(), 150.00),
(7, 2, GETDATE(), 160.00),
(8, 3, GETDATE(), 170.00),
(9, 4, GETDATE(), 180.00),
(10, 5, GETDATE(), 190.00),
(1, 1, GETDATE(), 200.00),
(2, 2, GETDATE(), 210.00),
(3, 3, GETDATE(), 220.00),
(4, 4, GETDATE(), 230.00),
(5, 5, GETDATE(), 240.00),
(6, 1, GETDATE(), 250.00),
(7, 2, GETDATE(), 260.00),
(8, 3, GETDATE(), 270.00),
(9, 4, GETDATE(), 280.00),
(10, 5, GETDATE(), 290.00);
select * from dbo.Orders;


INSERT INTO orderItem(orderId,ProductId,quantity, price) VALUES
(1, 1, 3, 10.00),
(2, 2, 2, 15.00),
(3, 3, 3, 20.00),
(4, 4, 1, 25.00),
(5, 5, 2, 30.00),
(6, 6, 3, 35.00),
(7, 7, 1, 40.00),
(8, 8, 2, 45.00),
(9, 9, 3, 50.00),
(10, 10, 1, 55.00),
(11, 11, 2, 10.00),
(12, 12, 3, 15.00),
(13, 13, 1, 20.00),
(14, 14, 2, 25.00),
(15, 15, 3, 30.00),
(16, 16, 1, 35.00),
(17, 17, 2, 40.00),
(18, 18, 3, 45.00),
(19, 19, 1, 50.00),
(20, 20, 2, 55.00),
(21, 21, 3, 10.00),
(22, 22, 1, 15.00),
(23, 23, 2, 20.00),
(24, 24, 3, 25.00),
(25, 25, 1, 30.00),
(26, 26, 2, 35.00),
(27, 27, 3, 40.00),
(28, 28, 1, 45.00),
(29, 29, 2, 50.00),
(30, 30, 3, 55.00),
(31, 31, 1, 10.00),
(32, 32, 2, 15.00),
(33, 33, 3, 20.00),
(34, 34, 1, 25.00),
(35, 35, 2, 30.00),
(36, 36, 3, 35.00),
(37, 37, 1, 40.00),
(38, 38, 2, 45.00),
(39, 39, 3, 50.00),
(40, 40, 1, 55.00),
(41, 41, 2, 10.00),
(42, 42, 3, 15.00),
(43, 43, 1, 20.00),
(44, 44, 2, 25.00),
(45, 45, 3, 30.00),
(46, 46, 1, 35.00),
(47, 47, 2, 40.00),
(48, 48, 3, 45.00),
(49, 49, 1, 50.00),
(50, 50, 2, 55.00),
(51, 1, 3, 10.00),
(52, 2, 1, 15.00),
(53, 3, 2, 20.00),
(54, 4, 3, 25.00),
(55, 5, 1, 30.00),
(56, 6, 2, 35.00),
(57, 7, 3, 40.00),
(58, 8, 1, 45.00),
(59, 9, 2, 50.00),
(60, 10, 3, 55.00),
(61, 11, 1, 10.00),
(62, 12, 2, 15.00),
(63, 13, 3, 20.00),
(64, 14, 1, 25.00),
(65, 15, 2, 30.00),
(66, 16, 3, 35.00),
(67, 17, 1, 40.00),
(68, 18, 2, 45.00),
(69, 19, 3, 50.00),
(70, 20, 1, 55.00),
(71, 21, 2, 10.00),
(72, 22, 3, 15.00),
(73, 23, 1, 20.00),
(74, 24, 2, 25.00),
(75, 25, 3, 30.00),
(76, 26, 1, 35.00),
(77, 27, 2, 40.00),
(78, 28, 3, 45.00),
(79, 29, 1, 50.00),
(80, 30, 2, 55.00),
(1, 1, 2, 10.00),
(2, 2, 3, 15.00),
(3, 3, 1, 20.00),
(4, 4, 2, 25.00),
(5, 5, 3, 30.00),
(6, 6, 1, 35.00),
(7, 7, 2, 40.00),
(8, 8, 3, 45.00),
(9, 9, 1, 50.00),
(10, 10, 2, 55.00),
(11, 11, 3, 10.00),
(12, 12, 1, 15.00),
(13, 13, 2, 20.00),
(14, 14, 3, 25.00),
(15, 15, 1, 30.00),
(16, 16, 2, 35.00),
(17, 17, 3, 40.00),
(18, 18, 1, 45.00),
(19, 19, 2, 50.00),
(20, 20, 3, 55.00),
(21, 21, 1, 10.00),
(22, 22, 2, 15.00),
(23, 23, 3, 20.00),
(24, 24, 1, 25.00),
(25, 25, 2, 30.00),
(26, 26, 3, 35.00),
(27, 27, 1, 40.00),
(28, 28, 2, 45.00),
(29, 29, 3, 50.00),
(30, 30, 1, 55.00),
(31, 31, 2, 10.00),
(32, 32, 3, 15.00),
(33, 33, 1, 20.00),
(34, 34, 2, 25.00),
(35, 35, 3, 30.00),
(36, 36, 1, 35.00),
(37, 37, 2, 40.00),
(38, 38, 3, 45.00),
(39, 39, 1, 50.00),
(40, 40, 2, 55.00),
(41, 41, 3, 10.00),
(42, 42, 1, 15.00),
(43, 43, 2, 20.00),
(44, 44, 3, 25.00),
(45, 45, 1, 30.00),
(46, 46, 2, 35.00),
(47, 47, 3, 40.00),
(48, 48, 1, 45.00),
(49, 49, 2, 50.00),
(50, 50, 3, 55.00),
(51, 1, 1, 10.00),
(52, 2, 2, 15.00),
(53, 3, 3, 20.00),
(54, 4, 1, 25.00),
(55, 5, 2, 30.00),
(56, 6, 3, 35.00),
(57, 7, 1, 40.00),
(58, 8, 2, 45.00),
(59, 9, 3, 50.00),
(60, 10, 1, 55.00),
(61, 11, 2, 10.00),
(62, 12, 3, 15.00),
(63, 13, 1, 20.00),
(64, 14, 2, 25.00),
(65, 15, 3, 30.00),
(66, 16, 1, 35.00),
(67, 17, 2, 40.00),
(68, 18, 3, 45.00),
(69, 19, 1, 50.00),
(70, 20, 2, 55.00),
(71, 21, 3, 10.00),
(72, 22, 1, 15.00),
(73, 23, 2, 20.00),
(74, 24, 3, 25.00),
(75, 25, 1, 30.00),
(76, 26, 2, 35.00),
(77, 27, 3, 40.00),
(78, 28, 1, 45.00),
(79, 29, 2, 50.00),
(80, 30, 3, 55.00);


--inserting payments
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (1, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (2, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (3, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (4, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (5, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (6, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (7, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (8, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (9, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (10, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (11, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (12, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (13, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (14, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (15, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (16, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (17, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (18, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (19, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (20, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (21, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (22, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (23, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (24, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (25, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (26, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (27, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (28, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (29, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (30, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (31, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (32, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (33, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (34, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (35, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (36, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (37, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (38, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (39, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (40, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (41, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (42, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (43, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (44, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (45, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (46, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (47, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (48, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (49, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (50, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (51, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (52, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (53, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (54, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (55, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (56, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (57, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (58, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (59, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (60, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (61, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (62, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (63, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (64, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (65, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (66, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (67, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (68, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (69, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (70, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (71, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (72, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (73, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (74, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (75, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (76, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (77, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (78, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (79, 'UPI', 'Paid', GETDATE());
INSERT INTO Payments (OrderID, PaymentMode, PaymentStatus, PaidAt) VALUES (80, 'UPI', 'Paid', GETDATE());


INSERT INTO DeliveryPartners (FullName, PhoneNumber) VALUES
('Aman Yadav', '7451394330'),
('Sushil Reddy', '8832132423'),
('Kiran Mehta', '7472989323'),
('Divya Patil', '6396175314'),
('Rohit Singh', '9876543210');

INSERT INTO Status (StatusName) VALUES
('Assigned'),
('Picked'),
('Out for Delivery'),
('Delivered'),
('Cancelled');

-- Consolidated DeliveryStatus inserts
INSERT INTO DeliveryStatus (OrderID, StatusID, UpdatedAt) VALUES 
(1, 2, GETDATE()),
(2, 3, GETDATE()),
(3, 4, GETDATE()),
(4, 5, GETDATE()),
(5, 1, GETDATE()),
(6, 2, GETDATE()),
(7, 3, GETDATE()),
(8, 4, GETDATE()),
(9, 5, GETDATE()),
(10, 1, GETDATE()),
(11, 2, GETDATE()),
(12, 3, GETDATE()),
(13, 4, GETDATE()),
(14, 5, GETDATE()),
(15, 1, GETDATE()),
(16, 2, GETDATE()),
(17, 3, GETDATE()),
(18, 4, GETDATE()),
(19, 5, GETDATE()),
(20, 1, GETDATE()),
(21, 2, GETDATE()),
(22, 3, GETDATE()),
(23, 4, GETDATE()),
(24, 5, GETDATE()),
(25, 1, GETDATE()),
(26, 2, GETDATE()),
(27, 3, GETDATE()),
(28, 4, GETDATE()),
(29, 5, GETDATE()),
(30, 1, GETDATE()),
(31, 2, GETDATE()),
(32, 3, GETDATE()),
(33, 4, GETDATE()),
(34, 5, GETDATE()),
(35, 1, GETDATE()),
(36, 2, GETDATE()),
(37, 3, GETDATE()),
(38, 4, GETDATE()),
(39, 5, GETDATE()),
(40, 1, GETDATE()),
(41, 2, GETDATE()),
(42, 3, GETDATE()),
(43, 4, GETDATE()),
(44, 5, GETDATE()),
(45, 1, GETDATE()),
(46, 2, GETDATE()),
(47, 3, GETDATE()),
(48, 4, GETDATE()),
(49, 5, GETDATE()),
(50, 1, GETDATE()),
(51, 2, GETDATE()),
(52, 3, GETDATE()),
(53, 4, GETDATE()),
(54, 5, GETDATE()),
(55, 1, GETDATE()),
(56, 2, GETDATE()),
(57, 3, GETDATE()),
(58, 4, GETDATE()),
(59, 5, GETDATE()),
(60, 1, GETDATE()),
(61, 2, GETDATE()),
(62, 3, GETDATE()),
(63, 4, GETDATE()),
(64, 5, GETDATE()),
(65, 1, GETDATE()),
(66, 2, GETDATE()),
(67, 3, GETDATE()),
(68, 4, GETDATE()),
(69, 5, GETDATE()),
(70, 1, GETDATE()),
(71, 2, GETDATE()),
(72, 3, GETDATE()),
(73, 4, GETDATE()),
(74, 5, GETDATE()),
(75, 1, GETDATE()),
(76, 2, GETDATE()),
(77, 3, GETDATE()),
(78, 4, GETDATE()),
(79, 5, GETDATE()),
(80, 1, GETDATE());


-- Consolidated Reviews inserts with realistic comments
INSERT INTO Reviews (UserID, ProductID, Rating, Comment) VALUES 
(1, 31, 1, 'Flimsy construction and poor performance'),
(2, 2, 2, 'The product arrived damaged and the quality was not as expected'),
(3, 3, 3, 'Decent product but shipping took longer than estimated'),
(4, 4, 4, 'Good quality and fast delivery, would recommend'),
(5, 5, 5, 'Excellent product! Exceeded my expectations'),
(6, 6, 1, 'Poor quality and not as described in the product details'),
(7, 7, 2, 'Product was okay but customer service was unhelpful'),
(8, 8, 3, 'Average product for the price, nothing special'),
(9, 9, 4, 'Very satisfied with my purchase, works perfectly'),
(10, 10, 5, 'Absolutely love this product! Worth every penny'),
(1, 11, 1, 'Defective item received, had to return for refund'),
(2, 12, 2, 'Not as durable as I hoped, broke after a few uses'),
(3, 13, 3, 'It works but the instructions were unclear'),
(4, 14, 4, 'Great value for money, performs well'),
(5, 15, 5, 'Perfect fit and high quality materials'),
(6, 16, 1, 'Wrong color received and difficult to assemble'),
(7, 17, 2, 'Mediocre quality, expected better for the price'),
(8, 18, 3, 'Does the job but could be improved'),
(9, 19, 4, 'Impressed with the quality and fast shipping'),
(10, 20, 5, 'Best purchase I made this year!'),
(1, 21, 1, 'Item was missing parts and customer service was slow to respond'),
(2, 22, 2, 'Product was smaller than expected and overpriced'),
(3, 23, 3, 'Average performance, nothing outstanding'),
(4, 24, 4, 'Very happy with this purchase, meets all my needs'),
(5, 25, 5, 'Exceptional quality and fast delivery'),
(6, 26, 1, 'Product stopped working after 2 days'),
(7, 27, 2, 'Not worth the money, poor craftsmanship'),
(8, 28, 3, 'It works but the design could be better'),
(9, 29, 4, 'Great product with excellent features'),
(10, 30, 5, 'Perfect in every way, highly recommend');
