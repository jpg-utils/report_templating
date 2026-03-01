function write-report {
    [CmdletBinding()]
    param(
    [Parameter(Mandatory=$true)]
    [string] $output,

    [Parameter(Mandatory=$true)]
    [string] $reportname,

    [Parameter (Mandatory=$false)]
    [string]$reportpath = "."
    )

    if (-not(Test-Path $reportpath)){
        Write-Host "report path not found! writing to current location!"
        $reportpath =  "."
    }
    $output | Out-File "$reportpath\$reportname.html"
    Invoke-Item "$reportpath\$reportname.html"

}
Export-ModuleMember -Function write-report