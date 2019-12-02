$S= read-host "How many students in the class ?"
$x=0
$n=1
write-host $S
pause
Do{
copy LAC2019.xlsx Test$n.xlsx
$n=$n+1
$x=$x+1
} Until ($x -eq $S)
