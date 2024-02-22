function Invoke-PlayWrightReport {
  [CmdletBinding(SupportsShouldProcess=$true)]
  param (
    [Parameter(ValueFromRemainingArguments=$true)]
    $arguments
  )

  begin {
#    $npxCmd = "npx", "playwright"
  }

  process {
    if ($PSCmdlet.ShouldProcess("Running npx playwright show-report $arguments", "Target", "Operation" )) {
      & npx playwright show-report $arguments
    }
  }

  end {

  }
}

New-Alias -Name pr -Value Invoke-PlayWrightReport