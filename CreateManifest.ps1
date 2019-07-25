Set-Location $PSScriptRoot

$Manifest = @{
    Path    = '.\DAF.Modules.psd1'
    #Root    = '.\DAF.ModuleImporter.psm1'
    NestedModules = @(
    '.\functions\0.1\DAF.InfrastructureAdmin.psm1'
    '.\functions\0.1\DAF.O365Custom.psm1'
    '.\functions\0.1\DAF.Instantiate.psm1'
    )
    Author  = 'Dane Falvo'
    ModuleVersion = '1.4'
    FunctionsToExport = @('*')
}

New-ModuleManifest @Manifest

