ALTER DATABASE [$(DatabaseName)]
    ADD FILE (NAME = [DeveloperTest], FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DeveloperTest.mdf', SIZE = 3072 KB, FILEGROWTH = 1024 KB) TO FILEGROUP [PRIMARY];

