Get-ChildItem -path "E:\ISCHECK\Xfer\VerafinRDC_output" -exclude *.txt -recurse -file -erroraction silentlycontinue | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-14)} | remove-item -force
