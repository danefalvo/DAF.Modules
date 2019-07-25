Write-Host "We should implement DFCustom to check for Admin rights on load"
Write-Host "If this is the first time you've imported this you should run `"Set-MeUp -options CleanInstall`""
function Set-MeUp {
    param (
        [ValidateSet("CleanInstall")]
        $options 
    )
if ($options -eq "CleanInstall"){
Install-Module MSOnline -Force
Install-Module AzureAD -Force
Install-Module AzureRM -Force
Install-Module Microsoft.Online.Sharepoint.PowerShell -Force

} else {

}
}

function Connect-O365 {
    param (
    )
    
$creds = Get-Credential
Write-Host 
Import-Module MSOnline
Import-Module AzureAD
Import-Module AzureRM
Connect-MsolService -Credential $creds
Connect-AzureAD -Credential $creds
Connect-MsolService -Credential $creds
$exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $creds -Authentication Basic -AllowRedirection
Import-Module (Import-PSSession $exchangeSession -AllowClobber -DisableNameChecking) -Global 
}

