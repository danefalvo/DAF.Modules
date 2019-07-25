
function Set-ComputerToInterrogate{
    param (
        [Parameter()]
        $Computer
    )
    $ComputerList += $Computer
    Write-Host "Computer List:"$Computer
  
 
}

function Add-ComputerToInterrogate{
  param (
      [Parameter()]
      $Computer
  )
  Write-Host "Computer List:"$Computer


}

function Test-BitlockerStatus{
  param (
      [ValidateSet("WhosOnline")]
      $options 
  )
if ($options -eq "WhosOnline"){


}

}

function Connect-TSOcto{
  param (
      [ValidateSet("WhosOnline")]
      $options 
  )
if ($options -eq "WhosOnline"){


}

}

