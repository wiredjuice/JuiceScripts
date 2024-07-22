# this script checks to see if the folder has already been created
# if it hasn't it will create the folder then sets permissions on it
# then verifies if the folder has been created or not
# NEED TO CHANGE PATH ($Path = '\\server\folder\folder') !!!
# NEED TO CHANGE USER PERMISSION ($permission = 'UserAliasGoesHere') !!!

# this is the path for the new folder
$Path = 'C:\ICaptureScans\'

# test to see if folder already exists
if (Test-Path $Path) {
Write-Host -ForegroundColor Yellow "
-------------------------------------------------------
`n
The folder has previously been created. No action taken
`n
-------------------------------------------------------
"
}
else {
# create new folder
$null = New-Item -Path $Path -ItemType Directory
# get permissions
$acl = Get-Acl -Path $path

# add a new permission (FullControl, Modify, Read)
$permission = 'Domain Users', 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow'
$rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permission
$acl.SetAccessRule($rule)

# set new permissions
$acl | Set-Acl -Path $path 
# verify the folder has been created
if (Test-Path $Path) {
Write-Host -ForegroundColor Green "
----------------------------
`n
The folder has been created.
`n
----------------------------
"
}
else {
Write-Host -ForegroundColor Red "
--------------------------------
`n
The folder has not been created.
`n
--------------------------------
"
}
}