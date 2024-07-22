Get-ChildItem -path "E:\ISCHECK\Xfer\Q2PayeeMatch" -exclude *.txt -recurse -file -erroraction silentlycontinue | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-30)} | remove-item -force
