$reportname = "full_report"
$reportpath ="."


Get-ChildItem .\modules | Import-Module -Force

$output = start-report -title $reportname

foreach ($test in (Get-ChildItem .\tests)){
    $format, $results = . $test
    $output += write-html -format $format -testresult $results -testname $test.BaseName
}

write-report  -output $output -reportpath $reportpath -reportname $reportname