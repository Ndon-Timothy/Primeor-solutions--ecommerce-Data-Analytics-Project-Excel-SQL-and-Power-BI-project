USE primeor_ecommerce;
GO

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'ecommerce_sales'
  AND COLUMN_NAME = 'product_name';
  ALTER TABLE dbo.ecommerce_sales
ALTER COLUMN product_name NVARCHAR(500) NULL;
USE primeor_ecommerce;
GO
SELECT DB_NAME() AS Current_Database;

SELECT name
FROM sys.tables
WHERE name = 'ecommerce_sales';
USE primeor_ecommerce;
GO

SELECT COUNT(*) AS Total_Records
FROM dbo.ecommerce_sales;
SELECT COUNT(*) AS Missing_Profit_Values
FROM dbo.ecommerce_sales
WHERE profit IS NULL;
USE primeor_ecommerce;
GO

SELECT
    order_id,
    order_date,
    customer_name,
    product_name,
    sales,
    profit
FROM dbo.ecommerce_sales
WHERE profit IS NULL;
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'ecommerce_sales'
AND COLUMN_NAME = 'profit';