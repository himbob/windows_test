Start-Transcript -Path c:\temp\log.txt
@("1.1.1.1","2.2.2.2") | ForEach {Write-Host $_, "-", ([System.Net.NetworkInformation.Ping]::new().Send($_)).Status}
Stop-Transcript