Attribute VB_Name = "modInit"
Public Declare Function GetTickCount Lib "kernel32" () As Long

Sub Main()
    Dim StartTick As Long, EndTick As Long, OutputString As String
    P1098 StartTick, EndTick, OutputString
    MsgBox OutputString
    MsgBox "ִ����ɣ�����ʱ�� " & (EndTick - StartTick) & " ms"
End Sub
