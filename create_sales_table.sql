CREATE DATABASE SalesETLDB;
GO

USE SalesETLDB;
GO

CREATE TABLE dbo.Sales (
    SaleDate DATE,
    Region NVARCHAR(50),
    Salesperson NVARCHAR(100),
    Product NVARCHAR(100),
    UnitsSold INT,
    UnitPrice DECIMAL(10,2),
    TotalSales AS (UnitsSold * UnitPrice) PERSISTED
);
