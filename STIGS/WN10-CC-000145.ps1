<#
.SYNOPSIS
    This PowerShell script ensures that the users are prompted for a password on resume from sleep (on battery).

.NOTES
    Author          : Justin Soflin
    LinkedIn        : linkedin.com/in/justin-soflin/
    GitHub          : github.com/justinsoflin
    Date Created    : 2025-05-13
    Last Modified   : 2025-05-13
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000145

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000145.ps1
#>

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51"

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the DCSettingIndex value to 1 (REG_DWORD)
New-ItemProperty -Path $regPath -Name "DCSettingIndex" -Value 1 -PropertyType DWORD -Force
