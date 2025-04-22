Write-Host "Copying files to IIS directory..."
Copy-Item -Path "C:\temp\your-source-folder\*" -Destination "C:\inetpub\wwwroot" -Recurse -Force