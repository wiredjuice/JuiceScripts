﻿Get-ChildItem -Path 'C:\Users\Public\Desktop\*' -Filter *.lnk -Recurse | where-object {$_.Name -ilike "*Research*"} | Remove-Item -Force