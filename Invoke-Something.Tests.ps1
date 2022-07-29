Describe "Invoke-Something" {
  Context "when run" {
    It "should work" {
      { . "$PSScriptRoot\Invoke-Something.ps1" } | Should -Not -Throw
    }
  }
}
