/*
Create Database and Schemas
-------------------------
Script Purpose:
  This script create a fresh database called 'DataWarehouse' after checking if it already exists.
  If the database is found, it will be dropped and rebuilt from scratch. Additionally, it sets up three distinct schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will wipe out the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'Datawarehouse' database
IF EXSITS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO
--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA sliver;
GO
CREATE SCHEMA gold;
GO
