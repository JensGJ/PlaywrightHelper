. $PSScriptRoot\..\_InitializeTests.ps1

Describe 'Invoke-PlayWright' {

  Context "When passed with whatIf." {

    It 'Should not return anything.' {
      Invoke-PlayWright -WhatIf  | Should -BeNullOrEmpty
    }

  }

}
