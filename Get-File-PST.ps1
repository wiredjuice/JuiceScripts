﻿get-childitem \\accserv\C$\ *.pst -recurse | Select name, length, fullname | export-csv C:\ittemp\ACCSERVpstfiles.csv