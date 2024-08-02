Write-Output "Fika Module Build started"
Write-Output "Building FIKA-Client-Module"
dotnet build --nologo --no-restore --configuration GoldMaster
if ($LASTEXITCODE -ne 0) {
    Write-Error "Error in Client-Module compilation!"
    exit 1
}
Write-Output "All Done!"
