function Invoke-PlayWrightCodegen {
  [CmdletBinding(SupportsShouldProcess=$true)]
  param (
    [Parameter(ValueFromRemainingArguments=$true)]
    $arguments
  )

  begin {
#    $npxCmd = "npx", "playwright"
  }

  process {
    if ($PSCmdlet.ShouldProcess("Running npx playwright codegen $arguments", "Target", "Operation" )) {
      & npx playwright codegen $arguments
    }
  }

  end {

  }
}

New-Alias -Name pc -Value Invoke-PlayWrightCodegen