function Get-Pizza {
  [CmdletBinding()]
  param(
    [Parameter(ParameterSetName="classic")]
    [string] $ClassicName,

    [Parameter(ParameterSetName="custom")]
    [string[]] $Toppings
  )

  begin {
    Write-Output @( "cheese", "sausage" )
    # throw "Hey!"
  }
}
