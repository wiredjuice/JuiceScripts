﻿get-adcomputer -Filter * -Properties * | select @{Label="Name";Expression={$_.name}}, @{Label="OS";Expression={$_.operatingsystem}}, @{Label="Distinguished name";Expression={$_.'distinguishedname'}}, @{Label="Password";Expression={$_.'ms-Mcs-AdmPwd'}} | Export-Csv C:\ittemp\laps.csv -NoTypeInformation -Append