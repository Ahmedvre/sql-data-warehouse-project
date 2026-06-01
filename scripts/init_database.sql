/*
======================================
Create Database and Schemas
======================================
Script purpose:
	This script creates a new database named 'DataWarehouse' after checking if it's allready exists and sets up three schemas: 'bronze', 'silver', and 'gold'.

WARNING:
	If a database with the name 'DataWarehouse' already exists, it will be dropped and recreated to ensure a clean setup.
*/

USE master;
GO

-- Check if the database 'DataWarehouse' exists and drop it if it does
IF EXISTS	(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas for different stages of data processing
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO

