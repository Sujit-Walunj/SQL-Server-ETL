
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'DATAWAREHOUSE')
	BEGIN
	ALTER DATABASE DATAWAREHOUSE SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DATAWAREHOUSE;
END;
	GO

------- Create Datawarehouse--
CREATE DATABASE Datawarehouse
-- slelecting current database
GO
USE Datawarehouse;
GO
-- Create schema--
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;



