function Invoke-PlayWright {
  [CmdletBinding(SupportsShouldProcess=$true)]
  param (
    [Parameter(ValueFromRemainingArguments=$true)]
    $arguments
  )

  begin {
#    $npxCmd = "npx", "playwright"
  }

  process {
    if ($PSCmdlet.ShouldProcess("Running npx playwright $arguments", "Target", "Operation" )) {
      & npx playwright $arguments
    }
  }

  end {

  }
}

New-Alias -Name p -Value Invoke-PlayWright