﻿cmd /c powershell.exe "Get-WmiObject -class Win32_Printer | Select-Object Name,PortName"