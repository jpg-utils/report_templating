# Readme

## About

This project was designed to rapidly create an html report of items on a workstation or domain. It wraps tests you provide inside of collapsible HTML tabs for easy review.

## Test Requirements

There are 5 rules for scripts placed in the test folder:

1. The scripts must be written in powershell.
2. The test must return at least 2 objects back when run.
3. The first must be either the string "list" or "table". This defines how the results of the test  will appear in your report.
4. The second can be a single object, or multiple objects.
5. If your script returns too much information, consider piping your output to select-object to only include the attributes you need.

## Customization

The start-report module contains some very basic CSS that will center all content inside of the report

Main.ps1 has variables for setting names and file paths of your final report.

## Warnings

Rerunning the script will overwrite the previous version of the script if not renamed. This is by design.
If you need to save a version of your report, you will either need to save or rename the report to prevent it being overwritten.

## Samples

The test directory holds 3 sample scripts showing how to format your output. Outside of the 4 rules above, you have a lot of leeway on what can be output.

The report.html is a sample report showing the results of these 3 sample scripts. It is encouraged to remove these scripts prior to production use.

## How to run

1. pull this repo
2. replace the scripts in the test directory with your own.
3. Either run the reports ad hoc by running main.ps1, or set up a scheduled task to call it for you. (make sure you have the right permissions!)
4. Review your output and tailor your scripts accordingly.