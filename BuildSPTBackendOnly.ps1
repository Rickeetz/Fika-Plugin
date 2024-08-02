Write-Output "SPT-Backend Build Started"
Write-Output "Building SPT-Backend"
Set-Location -Path "..\SPT-Backend\project"
npm run build:release --platform=linux --arch=x64
if ($LASTEXITCODE -ne 0) {
    Write-Error "SPT Build fehlgeschlagen. Beende das Skript."
    exit 1
}
Write-Output "All Done!"
