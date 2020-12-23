function Write-Log {
    Param(
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string]$Message,
        [Parameter(Mandatory = $false, Position = 1)]
        [ValidateSet('Error', 'Warning', 'Information', 'Verbose', 'Debug')]
        [string]$LogLevel = 'Information'
    )

    switch ($LogLevel) {
        'Error' { Write-Output "[ERROR]       - $Message" }
        'Warning' { Write-Output "[WARNING]     - $Message" }
        'Information' { Write-Output "[INFO] - $Message" }
        'Verbose' { Write-Output "[VERBOSE]     - $Message" }
        'Debug' { Write-Output "[DEBUG]       - $Message" }
        default { throw "Invalid log level: $_" }
    }
}

Write-Log "Hello World!"
# Write-Log "" # causes an error