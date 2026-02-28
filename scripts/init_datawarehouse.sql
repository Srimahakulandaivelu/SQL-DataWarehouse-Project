/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;  -- going to the root directory of the server
GO

-- checking if there already exists a database named Data Warehouse
-- if exists drop the db and recreate it
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Data_warehouse')
BEGIN
    ALTER DATABASE Data_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Data_warehouse;
END;
GO

  -- creating 'Data_warehouse' database
CREATE DATABASE Data_warehouse;
GO

USE Data_warehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO



