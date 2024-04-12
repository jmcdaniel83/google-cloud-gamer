Write-Host "Setting Execution Policy..."
Set-ExecutionPolicy -ExecutionPolicy Unrestricted

Write-Host "Setting TLS Security Protocol..."
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"

Write-Host "Running Script..."
powershell .\Loader.ps1