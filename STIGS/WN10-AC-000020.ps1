<#
.SYNOPSIS
    This PowerShell script configures password history to 24 passwords remembered.


.NOTES
    Author          : Justin Soflin
    LinkedIn        : linkedin.com/in/justin-soflin/
    GitHub          : github.com/justinsoflin
    Date Created    : 2025-05-21
    Last Modified   : 2025-05-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000020

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000020.ps1
#>

secedit /export /cfg $env:TEMP\p.inf
(Get-Content $env:TEMP\p.inf) -replace 'PasswordHistorySize\s*=\s*\d+', 'PasswordHistorySize = 24' |
    Set-Content -Encoding ASCII $env:TEMP\p.inf
secedit /configure /db "$env:WINDIR\security\database\local.sdb" /cfg $env:TEMP\p.inf /areas SECURITYPOLICY
Remove-Item $env:TEMP\p.inf -Force
