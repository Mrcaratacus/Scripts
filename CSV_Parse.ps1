$TC = 2
$SN = 1
$LN = (Get-Content 'E:\Audit\Cert III Net\students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
Format-Table
$LLN = (Get-Content 'E:\Audit\Cert III Net\students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
Format-Table
$LFN = (Get-Content 'E:\Audit\Cert III Net\students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
echo $LN
echo $LLN
echo $LFN
$TC =$TC+1
$SN =$SN+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
echo $CFN
pause
