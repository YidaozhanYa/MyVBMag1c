Attribute VB_Name = "modBase64Encode"
Sub Main()
MsgBox Base64Encode("Hello World!")
End Sub

Function Base64Encode(StringToEncode As String) As String
    Dim Buffer() As Byte
    Buffer = StringToEncode  '��������ַ���ת�����ֽ�����
    
    Dim i As Long, j As Integer
    'i:����bufferʱ��index
    'j:base64���ܵ�ʱ��������byteһ�� ������ʱ����
    j = 1
    For i = 0 To UBound(Buffer)
    If Buffer(i) <> 0 Then
        j = j + 1
        Debug.Print DecToBinString(Buffer(i))
        If j > 3 Then
        Debug.Print "qwq!"
        j = 1
        End If
    End If
    Next
End Function

Function DecToBinString(ByVal InputDecimal As Integer) As String
    Dim Ret As String, OperatingDecimal As Integer
    Ret = "": OperatingDecimal = InputDecimal
    Do While OperatingDecimal > 0
        Ret = OperatingDecimal Mod 2 & Ret
        OperatingDecimal = OperatingDecimal \ 2
    Loop
    DecToBinString = Ret
End Function

