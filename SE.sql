CREATE DATABASE final;
USE final;

CREATE TABLE Categories (
    id INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Products (
    id INT PRIMARY KEY,
    Name VARCHAR(255),
    #Cost_Price DECIMAL(10, 2),
    #Sell_Price DECIMAL(10, 2),
    Cost_Price DOUBLE,
    Sell_Price DOUBLE,
    Unit VARCHAR(255),
    Category_id INT,
    FOREIGN KEY (Category_id) REFERENCES Categories(id)
);

CREATE TABLE Stocks (
    id INT PRIMARY KEY,
    Quantity INT,
    Unit VARCHAR(255),
    Product_id INT,
    FOREIGN KEY (Product_id) REFERENCES Products(id)
);

CREATE TABLE Users (
    id INT PRIMARY KEY,
    Name VARCHAR(255),
    Password VARCHAR(255),
    Confirm_Password VARCHAR(255),
    Profile VARCHAR(255)
);

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE Suppliers (
    id INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE Sale_Detail (
    id INT PRIMARY KEY,
    Quantity INT,
    Total_Price DECIMAL(10, 2),
    Date_Sale DATE,
    Product_id INT,
    Sale_id INT,
    FOREIGN KEY (Product_id) REFERENCES Products(id),
    FOREIGN KEY (Sale_id) REFERENCES Sales(id)
);

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    Total_Price DECIMAL(10, 2),
    Customer_id INT,
    User_id INT,
    FOREIGN KEY (Customer_id) REFERENCES Customers(id),
    FOREIGN KEY (User_id) REFERENCES Users(id)
);

CREATE TABLE Purchases (
    id INT PRIMARY KEY,
    Total_Price DECIMAL(10, 2),
    Supplier_id INT,
    User_id INT,
    FOREIGN KEY (Supplier_id) REFERENCES Suppliers(id),
    FOREIGN KEY (User_id) REFERENCES Users(id)
);

CREATE TABLE Purchase_Detail (
    id INT PRIMARY KEY,
    Quantity INT,
    Total_Price DECIMAL(10, 2),
    DatePurchase DATE,
    Product_id INT,
    Purchase_id INT,
    FOREIGN KEY (Product_id) REFERENCES Products(id),
    FOREIGN KEY (Purchase_id) REFERENCES Purchases(id)
);
