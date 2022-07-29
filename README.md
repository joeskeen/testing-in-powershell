# testing-in-powershell

A starting point for testing in PowerShell using Pester

## Setup

## PowerShell 5.1 (bundled with Windows)

Pester 4 is already installed. You may have to run `Import-Module Pester` to add it to your current session.

## PowerShell Core (cross-platform)

Although you can also use Pester 4 in PSCore, you can take advantage of the latest Pester by running:

```powershell
Install-Module Pester -Force
Import-Module Pester -RequiredVersion 5.3.3 # replace this with the actual installed version
```

## Running tests

### Pester 4

```powershell
Invoke-Pester
```

Should output something similar to this:

```
Pester v4.10.1
Executing all tests in '.'

Executing script C:\Source\github\testing-in-powershell\Invoke-Something.Tests.ps1

  Describing Invoke-Something

    Context when run
      [+] should work 10ms
Tests completed in 182ms
Tests Passed: 1, Failed: 0, Skipped: 0, Pending: 0, Inconclusive: 0
```

### Pester 5

```powershell
Invoke-Pester -Output Detailed
```

Should output something similar to this:

```
Pester v5.3.3

Starting discovery in 1 files.
Discovery found 1 tests in 25ms.
Running tests.

Running tests from 'C:\Source\github\testing-in-powershell\Invoke-Something.Tests.ps1'
Describing Invoke-Something
 Context when run
   [+] should work 10ms (6ms|4ms)
Tests completed in 188ms
Tests Passed: 1, Failed: 0, Skipped: 0 NotRun: 0
```
