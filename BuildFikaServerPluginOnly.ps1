Set-Location -Path "..\Fika-Server"
Write-Output "Building FIKA-SPT-Servermod"
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Error "npm run build fehlgeschlagen. Beende das Skript."
    exit 1
}
Write-Output "All Done!"
