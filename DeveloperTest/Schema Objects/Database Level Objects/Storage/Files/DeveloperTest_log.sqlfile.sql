﻿ALTER DATABASE [$(DatabaseName)]
    ADD LOG FILE (NAME = [DeveloperTest_log], FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DeveloperTest_log.ldf', SIZE = 1024 KB, MAXSIZE = 2097152 MB, FILEGROWTH = 10 %);

