# check-iis.ps1

Write-Host "Checking if IIS (Web-Server) feature is installed..."

# Import ServerManager module if needed (older systems)

Import-Module ServerManager -ErrorAction SilentlyContinue

# Get IIS feature info

$feature = Get-WindowsFeature -Name Web-Server

if ($null -eq $feature) {

    Write-Error "Unable to retrieve feature information. Make sure this script is running on Windows Server."

    exit 1

}

if ($feature.Installed) {

    Write-Host "IIS is installed."

    exit 0

} else {

    Write-Warning "IIS is NOT installed. Exiting with error."

    exit 1

}
 