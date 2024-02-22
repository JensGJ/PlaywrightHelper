function Invoke-PlayWrightTest {
  [CmdletBinding(SupportsShouldProcess=$true)]
  param (
    [Parameter(ValueFromRemainingArguments=$true)]
    $arguments
  )

  begin {
#    $npxCmd = "npx", "playwright"
  }

  process {
    if ($PSCmdlet.ShouldProcess("Running npx playwright test $arguments", "Target", "Operation" )) {
      & npx playwright test $arguments
    }
  }

  end {

  }
}

New-Alias -Name pt -Value Invoke-PlayWrightTest