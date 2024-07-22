Get-ChildItem -path "H:\VidyoRecordings" -exclude *.00155d0a84a5 -recurse -file -erroraction silentlycontinue | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-90)} | remove-item -force
