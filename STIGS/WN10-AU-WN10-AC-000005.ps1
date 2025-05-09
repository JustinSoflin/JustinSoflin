<#
.SYNOPSIS
    This PowerShell script ensures a 15-minute or manual account lockout to deter brute-force attacks.

.NOTES
    Author          : Justin Soflin
    LinkedIn        : linkedin.com/in/justin-soflin/
    GitHub          : github.com/justinsoflin
    Date Created    : 2025-05-09
    Last Modified   : 2025-05-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005


.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-WN10-AC-000005).ps1 
#>

# Configure Account Lockout Policy - STIG WN10-AC-000005

Write-Host "Configuring account lockout policies to meet STIG WN10-AC-000005..." -ForegroundColor Cyan

# Set lockout threshold: number of invalid login attempts before lockout
net accounts /lockoutthreshold:3

# Set lockout duration: how long (in minutes) the account remains locked
net accounts /lockoutduration:15

# Set reset lockout counter: how long (in minutes) before the failed attempt counter resets
net accounts /lockoutwindow:15

# Display current account policy for verification
Write-Host "`nCurrent Account Policy:" -ForegroundColor Green
net accounts

Write-Host "`nSTIG WN10-AC-000005 remediation complete." -ForegroundColor Cyan
