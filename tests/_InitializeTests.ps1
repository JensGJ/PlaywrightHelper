# Define common module info variables.
$ModuleName = "PlaywrightHelper"
$ModuleManifestName = "$ModuleName.psd1"
$ModuleManifestPath = "$PSScriptRoot\..\src\$ModuleManifestName"

# Remove module if already loaded, then import.
Get-Module $ModuleName | Remove-Module
Import-Module $ModuleManifestPath -Force -ErrorAction Stop
