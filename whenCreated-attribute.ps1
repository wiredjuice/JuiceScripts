﻿Get-ADComputer -LDAPFilter "(&(objectCategory=computer)(whenCreated>=20111201000000.0Z))" -Properties whenCreated | Format-Table Name,whenCreated,distinguishedName -Autosize -Wrap