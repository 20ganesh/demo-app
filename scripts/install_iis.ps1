Write-Host "Downloading NGINX for Windows..."
Invoke-WebRequest -Uri https://nginx.org/download/nginx-1.24.0.zip -OutFile C:\nginx.zip
Write-Host "Extracting NGINX..."
Expand-Archive -Path C:\nginx.zip -DestinationPath C:\
# Move into a simpler folder
Rename-Item -Path C:\nginx-1.24.0 -NewName nginx
Write-Host "NGINX Installed Successfully."