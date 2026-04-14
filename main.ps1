if($PSVersionTable.PSVersion.Major -lt 7){
    try{
        pwsh.exe $MyInvocation.MyCommand.Source
    }
    catch{
        "this script requires Powershell 7, which you do not appear to have installed. Please install and run this script again."
        Pause
        exit
    }
}
else{

$reportname = "$(hostname)_report"
$reportpath ="."


Get-ChildItem .\modules | Import-Module -Force

$output = start-report -title $reportname

foreach ($test in (Get-ChildItem .\tests)){
    $format, $results = . $test
    $output += write-html -format $format -testresult $results -testname $test.BaseName
}

write-report  -output $output -reportpath $reportpath -reportname $reportname
}