﻿Get-ChildItem -Path 'C:\*' -Filter *.imr -Recurse | Select DirectoryName,Name,@{N='Version';E={$_.VersionInfo.ProductVersion}},LastWriteTime,Length,@{N='FileHash';E={(Get-FileHash $_).Hash}} | Export-Csv -NoTypeInformation -Path C:\ittemp\ImpromptuReportHash.txt