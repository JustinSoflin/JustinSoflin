<#
.SYNOPSIS

This powershell script prevents users from changing installation options.

.NOTES
    Author          : Justin Soflin
    LinkedIn        : linkedin.com/in/justin-soflin/
    GitHub          : github.com/justinsoflin
    Date Created    : 2025-05-21
    Last Modified   : 2025-05-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000310 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 	

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000310.ps1
#>

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer" -Name "EnableUserControl" -Value 0 -Type DWord
