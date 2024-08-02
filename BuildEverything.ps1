Write-Output "Full build Started"
Write-Output "Building FIKA-Client-Module"
dotnet build --nologo --no-restore --configuration GoldMaster
if ($LASTEXITCODE -ne 0) {
    Write-Error "Error in Client-Module compilation!"
    exit 1
}
Write-Output "Building SPT-Backend"
Set-Location -Path "..\SPT-Backend\project"
npm run build:release --platform=linux --arch=x64
if ($LASTEXITCODE -ne 0) {
    Write-Error "SPT Build fehlgeschlagen. Beende das Skript."
    exit 1
}
Set-Location -Path "..\..\Fika-Server"
Write-Output "Building FIKA-SPT-Servermod"
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Error "npm run build fehlgeschlagen. Beende das Skript."
    exit 1
}
Write-Output "All Done! Switching back to Fika-Plugin"
Set-Location -Path "..\Fika-Plugin"
