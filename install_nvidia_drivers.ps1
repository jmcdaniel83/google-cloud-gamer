# allow for tls
Write-Host "Setting TLS Security Protocol..."
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"

# download nvidia drivers
Write-Host "Downloading Nvidia Drivers..."
$source = "https://storage.googleapis.com/nvidia-drivers-us-public/GRID/vGPU17.1/551.78_grid_win10_win11_server2022_dch_64bit_international.exe"
$destination = "C:\temp\NvidiaDriver.exe"
Invoke-WebRequest -Uri $source -OutFile $destination

# install nvidia drivers
Write-Host "Installing Nvidia Drivers..."
Start-Process -FilePath $destination -ArgumentList "/s" -Wait

# EOF
