<#
.SYNOPSIS
    This PowerShell script disables camera access from the lock screen.

.NOTES
    Author          : Justin Soflin
    LinkedIn        : linkedin.com/in/justin-soflin/
    GitHub          : github.com/justinsoflin
    Date Created    : 2025-05-21
    Last Modified   : 2025-05-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000005.ps1
#>

# Create the registry key if it doesn't already exist
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Force

# Create or update the 'NoLockScreenCamera' DWORD value and set it to 1
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" `
  -Name "NoLockScreenCamera" -PropertyType DWord -Value 1 -Force
