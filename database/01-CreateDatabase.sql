/*
 * Incremental History Load
 * Project #84 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSIS, SCD
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'HistoryETL')
BEGIN
    ALTER DATABASE HistoryETL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE HistoryETL;
END
GO

CREATE DATABASE HistoryETL
ON PRIMARY
(
    NAME = 'HistoryETL_Data',
    FILENAME = 'C:\SQLData\HistoryETL_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'HistoryETL_Log',
    FILENAME = 'C:\SQLData\HistoryETL_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE HistoryETL SET RECOVERY SIMPLE;
ALTER DATABASE HistoryETL SET AUTO_UPDATE_STATISTICS ON;
GO

USE HistoryETL;
GO

PRINT 'Database HistoryETL created successfully';
PRINT 'Project: Incremental History Load';
PRINT 'Description: Slowly changing dimensions maintenance';
GO
