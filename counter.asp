<%
Response.Expires = 0
conta=-1
Set fs = CreateObject("Scripting.FileSystemObject")
Path = server.mappath("tabelle\conta.txt")
Set a = fs.OpenTextFile(path)
conta = CInt(a.ReadLine)
If Session("tabelle\conta") = "" then
Session("tabelle\conta") = conta
conta = conta + 1
a.close
Set a = fs.CreateTextFile(path, True)
a.WriteLine(conta)
End If
a.Close
%>

var str = "<%= conta %>";
var begin = "<img src=\"tabelle/";
var middle = ".png\" alt=\"";
var last = "\">";
for(x = 0;x < str.length; x++)
	{
    str1 = str.charAt(x);
    document.write(begin + str1 + middle + str1 + last);
    }
