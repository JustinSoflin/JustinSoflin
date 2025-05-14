WN10-CC-000145 - Users must be prompted for a password on resume from sleep (on battery).

# Requires administrative privileges

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51"

# Create the registry key if it doesn't exist
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the DCSettingIndex value to 1 (REG_DWORD)
New-ItemProperty -Path $regPath -Name "DCSettingIndex" -Value 1 -PropertyType DWORD -Force
