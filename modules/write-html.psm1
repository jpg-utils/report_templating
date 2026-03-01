function write-html {
    [CmdletBinding()]
    param(
    [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
    $testresult,

    [Parameter(Mandatory=$true)]
    [string] $testname,

    [Parameter (Mandatory=$false)]
    [string] $format = "list"
    )
process{
 return ($testresult | ConvertTo-Html -as $format -Fragment -PreContent "<details><summary>$testname</summary>" -PostContent "</details>")
}
}

Export-ModuleMember -Function write-html

#function needs to handle a list of objects, not just an object