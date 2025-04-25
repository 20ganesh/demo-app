# Check if IIS is installed
$feature = Get-WindowsFeature -Name Web-Server



if ($feature.Installed) {
   Write-Host "✅ IIS is already installed."



   # Restart IIS service
   try {
       Write-Host "🔄 Restarting IIS services..."
       iisreset /restart
       Write-Host "✅ IIS services restarted successfully."
   } catch {
       Write-Host "❌ Failed to restart IIS: $_"
   }
} else {
   Write-Host "❌ IIS is not installed. Installing now..."



   # Install IIS
   try {
       Install-WindowsFeature -Name Web-Server -IncludeManagementTools
       Write-Host "✅ IIS installed successfully."



       # Start IIS services
       Write-Host "🔄 Starting IIS services..."
       Start-Service W3SVC
       Write-Host "✅ IIS services started."
   } catch {
       Write-Host "❌ Failed to install or start IIS: $_"
   }
}

 