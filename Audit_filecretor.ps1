<#
This Script allows for the easy creation of audit related files given the correct file location and master files

You will need to "save-as" the spreadsheets as a CSV ( MSDOS compatable) format for the script to be able to parse it.

Created By - Joshua Hanscombe (Education Support Officer Ourimbah Campus)
#>

# Directory Creation

cd "E:/Audit"
New-Item -Name Audit -ItemType directory
cd "E:\Audit\Audit"
New-Item -Name CERT1IT -ItemType directory
New-Item -Name CERT3Net -ItemType directory
New-Item -Name CERT3Web -ItemType directory
New-Item -Name CERT4Net -ItemType directory
New-Item -Name CERT4Web -ItemType directory
New-Item -Name CERT4Prog -ItemType directory
cd "E:\Audit\Audit\CERT1IT"
New-Item -Name Units -ItemType directory
New-Item -Name Learners -ItemType directory
New-Item -Name Other_Documents -ItemType directory
cd "E:\Audit\Audit\CERT3Net"
New-Item -Name Units -ItemType directory
New-Item -Name Learners -ItemType directory
New-Item -Name Other_Documents -ItemType directory
cd "E:\Audit\Audit\CERT3Web"
New-Item -Name Units -ItemType directory
New-Item -Name Learners -ItemType directory
New-Item -Name Other_Documents -ItemType directory
cd "E:\Audit\Audit\CERT4Net"
New-Item -Name Units -ItemType directory
New-Item -Name Learners -ItemType directory
New-Item -Name Other_Documents -ItemType directory
cd "E:\Audit\Audit\CERT4Web"
New-Item -Name Units -ItemType directory
New-Item -Name Learners -ItemType directory
New-Item -Name Other_Documents -ItemType directory
cd "E:\Audit\Audit\CERT4Prog"
New-Item -Name Units -ItemType directory
New-Item -Name Learners -ItemType directory
New-Item -Name Other_Documents -ItemType directory

#LERNERS

$TLC = (Get-Content 'E:\Audit\other\Cert1\CSV\Students.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\Cert1\CSV\lines.txt
$STUDNUMM = get-content E:\Audit\other\Cert1\CSV\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 3
$SN = 2
$SC = 0
echo $STUDNUM
DO{
$LN = (Get-Content 'E:\Audit\other\Cert1\CSV\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
$LLN = (Get-Content 'E:\Audit\other\Cert1\CSV\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
$LFN = (Get-Content 'E:\Audit\other\Cert1\CSV\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
copy E:\Audit\other\LAC2019.xlsx E:\Audit\Audit\CERT1IT\Learners\$CFN.xlsx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\Cert1\CSV\lines.txt
remove-item -path 'E:\Audit\Audit\CERT1IT\Learners\- ().xlsx'


#Certificate 3 networking
$TLC = (Get-Content 'E:\Audit\other\cet3net\students.csv'| Select-Object -skip 1| %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cet3net\lines.txt
$STUDNUMM = get-content E:\Audit\other\cet3net\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 2
$SN = 1
$SC = 0
DO{
$LN = (Get-Content 'E:\Audit\other\cet3net\students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
$LLN = (Get-Content 'E:\Audit\other\cet3net\students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
$LFN = (Get-Content 'E:\Audit\other\cet3net\students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
copy E:\Audit\other\LAC2019.xlsx E:\Audit\Audit\CERT3Net\Learners\$CFN.xlsx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cet3net\lines.txt
remove-item -path 'E:\Audit\Audit\CERT3Net\Learners\- ().xlsx'

#certificate 3 WEB
$TLC = (Get-Content 'E:\Audit\other\cert3web\Students.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert3web\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert3web\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 3
$SN = 2
$SC = 0
echo $STUDNUM
DO{
$LN = (Get-Content 'E:\Audit\other\cert3web\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
$LLN = (Get-Content 'E:\Audit\other\cert3web\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
$LFN = (Get-Content 'E:\Audit\other\cert3web\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
copy E:\Audit\other\LAC2019.xlsx E:\Audit\Audit\CERT3Web\Learners\$CFN.xlsx
}until ($SC -eq $STUDNUM+1)

remove-item -path  E:\Audit\other\cert3web\lines.txt
remove-item -path 'E:\Audit\Audit\CERT3Web\Learners\- ().xlsx'


#certificate 4 NET
$TLC = (Get-Content 'E:\Audit\other\cert4net\Students.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert4net\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert4net\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 3
$SN = 2
$SC = 0
echo $STUDNUM
DO{
$LN = (Get-Content 'E:\Audit\other\cert4net\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
$LLN = (Get-Content 'E:\Audit\other\cert4net\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
$LFN = (Get-Content 'E:\Audit\other\cert4net\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
copy E:\Audit\other\LAC2019.xlsx E:\Audit\Audit\CERT4Net\Learners\$CFN.xlsx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert4net\lines.txt
remove-item -path 'E:\Audit\Audit\CERT4Net\Learners\- ().xlsx'


#certificate 4 WEB
$TLC = (Get-Content 'E:\Audit\other\cert4web\Students.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert4web\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert4web\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 3
$SN = 2
$SC = 0
echo $STUDNUM
DO{
$LN = (Get-Content 'E:\Audit\other\cert4web\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
$LLN = (Get-Content 'E:\Audit\other\cert4web\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
$LFN = (Get-Content 'E:\Audit\other\cert4web\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
copy E:\Audit\other\LAC2019.xlsx E:\Audit\Audit\CERT4Web\Learners\$CFN.xlsx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert4web\lines.txt
remove-item -path 'E:\Audit\Audit\CERT4Web\Learners\- ().xlsx'


#certificate 4 PROG
$TLC = (Get-Content 'E:\Audit\other\cert4prog\Students.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert4prog\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert4prog\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 3
$SN = 2
$SC = 0
echo $STUDNUM
DO{
$LN = (Get-Content 'E:\Audit\other\cert4prog\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[0];} ) 
$LLN = (Get-Content 'E:\Audit\other\cert4prog\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[1];} )
$LFN = (Get-Content 'E:\Audit\other\cert4prog\Students.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];}) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
$CFN = echo "$LLN-$LFN ($LN)"
echo $CFN
copy E:\Audit\other\LAC2019.xlsx E:\Audit\Audit\CERT4Prog\Learners\$CFN.xlsx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert4prog\lines.txt


#UNITS

#certificate 1 IT
$TLC = (Get-Content 'E:\Audit\other\Cert1\CSV\units.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\Cert1\CSV\lines.txt
$STUDNUMM = get-content E:\Audit\other\Cert1\CSV\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 5
$SN = 4
$SC = 0
echo $STUDNUM
DO{
$UNum = (Get-Content 'E:\Audit\other\Cert1\CSV\units.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[3];} ) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
echo $UNum

copy E:\Audit\other\UnitAudit.docx E:\Audit\Audit\CERT1IT\Units\$UNum.docx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\Cert1\CSV\lines.txt
remove-item -path E:\Audit\Audit\CERT1IT\Units\.docx
remove-item -path 'E:\Audit\Audit\CERT1IT\Units\Unit Number.docx'


#certificate 3 Net
$TLC = (Get-Content 'E:\Audit\other\cet3net\Units.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cet3net\lines.txt
$STUDNUMM = get-content E:\Audit\other\cet3net\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 5
$SN = 4
$SC = 0
echo $STUDNUM
DO{
$UNum = (Get-Content 'E:\Audit\other\cet3net\Units.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[4];} ) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
echo $UNum

copy E:\Audit\other\UnitAudit.docx E:\Audit\Audit\CERT3Net\Units\$UNum.docx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cet3net\lines.txt
remove-item -path 'E:\Audit\Audit\CERT3Net\Units\Unit Number.docx'
remove-item -path 'E:\Audit\Audit\CERT3Net\Units\.docx'


#certificate 3 Web
$TLC = (Get-Content 'E:\Audit\other\cert3web\Units.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert3web\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert3web\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 5
$SN = 4
$SC = 0
echo $STUDNUM
DO{
$UNum = (Get-Content 'E:\Audit\other\cert3web\Units.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[4];} ) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
echo $UNum

copy E:\Audit\other\UnitAudit.docx E:\Audit\Audit\CERT3Web\Units\$UNum.docx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert3web\lines.txt
remove-item -path 'E:\Audit\Audit\CERT3Web\Units\Unit Number.docx'
remove-item -path 'E:\Audit\Audit\CERT3Web\Units\.docx'



#certificate 4 Net
$TLC = (Get-Content 'E:\Audit\other\cert4net\units.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert4net\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert4net\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 5
$SN = 4
$SC = 0
echo $STUDNUM
DO{
$UNum = (Get-Content 'E:\Audit\other\cert4net\units.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[4];} ) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
echo $UNum

copy E:\Audit\other\UnitAudit.docx E:\Audit\Audit\CERT4Net\Units\$UNum.docx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert4net\lines.txt
remove-item -path E:\Audit\Audit\CERT4net\Units\.docx
remove-item -path 'E:\Audit\Audit\CERT4Net\Units\Unit Number.docx'


#certificate 4 Prog
$TLC = (Get-Content 'E:\Audit\other\cert4prog\units.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert4prog\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert4prog\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 5
$SN = 4
$SC = 0
echo $STUDNUM
DO{
$UNum = (Get-Content 'E:\Audit\other\cert4prog\units.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[2];} ) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
echo $UNum

copy E:\Audit\other\UnitAudit.docx E:\Audit\Audit\CERT4Prog\Units\$UNum.docx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert4prog\lines.txt
remove-item -path E:\Audit\Audit\CERT4Prog\Units\.docx
remove-item -path 'E:\Audit\Audit\CERT4Prog\Units\Unit Number.docx'


#certificate 4 Web
$TLC = (Get-Content 'E:\Audit\other\cert4web\units.csv'| Select-Object -skip 3 | %{ $_.Split(',')[0];} ) 
echo $TLC > E:\Audit\other\cert4web\lines.txt
$STUDNUMM = get-content E:\Audit\other\cert4web\lines.txt
$STUDNUM = $STUDNUMM.Count
$TC = 5
$SN = 4
$SC = 0
echo $STUDNUM
DO{
$UNum = (Get-Content 'E:\Audit\other\cert4web\units.csv'-totalcount $TC| Select-Object -skip $SN| %{ $_.Split(',')[4];} ) 
$TC =$TC+1
$SN =$SN+1
$SC =$SC+1
echo $UNum

copy E:\Audit\other\UnitAudit.docx E:\Audit\Audit\CERT4Web\Units\$UNum.docx
}until ($SC -eq $STUDNUM+1)

remove-item -path E:\Audit\other\cert4web\lines.txt
remove-item -path E:\Audit\Audit\CERT4Web\Units\.docx
remove-item -path 'E:\Audit\Audit\CERT4Web\Units\Unit Number.docx'


#This will copy over the audit files for the course
copy E:\Audit\other\CourseAudit.docx E:\Audit\Audit\CERT1IT\ICT10115.docx
copy E:\Audit\other\CourseAudit.docx E:\Audit\Audit\CERT3Net\ICT30115.docx
copy E:\Audit\other\CourseAudit.docx E:\Audit\Audit\CERT3Web\ICT30115.docx
copy E:\Audit\other\CourseAudit.docx E:\Audit\Audit\CERT4Net\ICT40415.docx
copy E:\Audit\other\CourseAudit.docx E:\Audit\Audit\CERT4Web\ICT40315.docx
copy E:\Audit\other\CourseAudit.docx E:\Audit\Audit\CERT4Prog\ICT40515.docx

