
 -- 1 user table
 CREATE TABLE Users(
 userId INT IDENTITY(1,1) PRIMARY KEY,
 fullName NVARCHAR(100) UNIQUE NOT NULL,
 email NVARCHAR(50),
 phoneNumber NVARCHAR(15),
 createdAt DATETIME DEFAULT GETDATE()
 );

 --2 addresses
 CREATE TABLE Addresses(
 addressId INT IDENTITY(1,1) PRIMARY KEY,
 userID INT FOREIGN KEY REFERENCES Users(userId),
 addressLine NVARCHAR(255),
 city NVARCHAR(50),
 district NVARCHAR(50),
 state NVARCHAR(50),
 pinCode NVARCHAR(10),
 createdAt DATETIME DEFAULT GETDATE()
 );


 -- 3 vendors
CREATE TABLE Vendors(
 vendorId INT IDENTITY(1,1) PRIMARY KEY,
 vendorName NVARCHAR(100),
 --vendorPhone NVARCHAR(15),
 vendorEmail NVARCHAR(100),
 createdAt DATETIME DEFAULT GETDATE()
 );


 --  4 product categories
CREATE TABLE ProductCategories(
 categoryId INT IDENTITY (1,1) PRIMARY KEY,
 categoryName NVARCHAR(100) NOT NULL
 );


 -- 5 products table
CREATE TABLE Products(
 productId INT IDENTITY (1,1) PRIMARY KEY,
 Name NVARCHAR(100) NOT NULL,
 Description NVARCHAR(255),
 categoryId INT FOREIGN KEY REFERENCES ProductCategories(categoryId),
 price DECIMAL(10,2),
 createdAt DATETIME DEFAULT GETDATE()
 );

EXEC sp_rename 'Products.name', 'name', 'COLUMN';
EXEC sp_rename 'Products.description', 'description', 'COLUMN';


 -- 6 inventory table
CREATE TABLE Inventory(
 inventoryId INT IDENTITY (1,1) PRIMARY KEY,
 vendorId INT FOREIGN KEY REFERENCES Vendors(vendorId),
 productId INT FOREIGN KEY REFERENCES Products(productId),
 quantityAvailable INT,
 lastUpdated DATETIME DEFAULT GETDATE()
 );


 -- 7 order table
CREATE TABLE Orders(
 orderId INT IDENTITY (1,1) PRIMARY KEY,
 userID INT FOREIGN KEY REFERENCES Users(userId),
 vendorId INT FOREIGN KEY REFERENCES Vendors(vendorId),
 orderDate DATETIME DEFAULT GETDATE(),
 totalAmount DECIMAL(10,2)
 );

 -- 8 order items
CREATE TABLE OrderItem(
 orderItemId INT IDENTITY (1,1) PRIMARY KEY,
 orderId INT FOREIGN KEY REFERENCES Orders(orderId),
 productID INT FOREIGN KEY REFERENCES Products(productId),
 quantity INT,
 Price DECIMAL(10,2)
 );

 -- 9 payments
CREATE TABLE Payments(
 paymentId INT IDENTITY (1,1) PRIMARY KEY,
 orderId INT FOREIGN KEY REFERENCES Orders(orderId),
 paymentMode NVARCHAR(50),
 paymentStatus NVARCHAR(50),
 paidAt DATETIME DEFAULT GETDATE()
 );

 -- 10 delivery agent
CREATE TABLE DeliveryPartners(
 partnerId INT IDENTITY (1,1) PRIMARY KEY,
 fullName NVARCHAR(50),
 phoneNumber NVARCHAR(15),
 );

 --  11 status
CREATE TABLE Status(
 statusId INT IDENTITY (1,1) PRIMARY KEY,
 statusName NVARCHAR(50),
 );

 -- 12 delivery status
CREATE TABLE DeliveryStatus(
 deliveryId INT IDENTITY (1,1) PRIMARY KEY,
 orderId INT FOREIGN KEY REFERENCES Orders(orderId),
 statusId INT FOREIGN KEY REFERENCES Status(statusId),
 updatedAt DATETIME DEFAULT GETDATE()
 );


 -- 13 reviews
 CREATE TABLE Reviews(
 reviewId INT IDENTITY (1,1) PRIMARY KEY,
 userID INT FOREIGN KEY REFERENCES Users(userId),
 statusId INT FOREIGN KEY REFERENCES Status(statusId),
 productID INT FOREIGN KEY REFERENCES Products(productId),
 rating INT CHECK (rating BETWEEN 1 AND 5),
 comment NVARCHAR(255),
 createdAt DATETIME DEFAULT GETDATE()
 );
