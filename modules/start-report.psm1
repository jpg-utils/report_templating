function start-report{
    param(
    [Parameter (Mandatory=$false)]
    [string] $title = "report"
    )

$output = @"
<!doctype html>
<html lang="en-US">
  <head>
    <meta charset="utf-8" />
    <title>$title</title>
    <style>
    body {text-align: center;}
    table {margin-left: auto; margin-right:auto;}
    td {padding-left: 8px; padding-right: 8px;}
    </style>
  </head>
  <body>
  <h1>$title</h1>
"@

$output
}

Export-ModuleMember -Function start-report