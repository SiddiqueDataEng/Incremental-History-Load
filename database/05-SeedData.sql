/*
 * Incremental History Load
 * Sample Data
 * SQL Server 2008/2012
 */

USE HistoryETL;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for Incremental-History-Load', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for Incremental-History-Load', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for Incremental-History-Load', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
