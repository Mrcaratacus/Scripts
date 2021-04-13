Sub Tester()

CellValue = Range("A1").Value: Rem
CountV = 0: Rem Counts up from 0
DayN = Range("C1").Value: Rem Amount of Days Between dates
Letter = "A"
Letters = Chr(Asc(Letter) + 1)
CellValue = CellValue + 1
CountV = CountV + 1

MsgBox CellValue
MsgBox CountV
MsgBox Letter
While CountV <= DayN: Rem This loop increments the count
CellValue = CellValue + 1
CountV = CountV + 1
MsgBox CellValue
MsgBox CountV
Wend

End Sub
