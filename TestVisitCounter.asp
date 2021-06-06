<!DOCTYPE html>
<html lang="it" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Test Contatore Vistite | Studio Acquario</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<meta name="description" content="Studio Acquario - Test Contatore Visite">

</head>
<body>


<%
   var Path = Server.MapPath("counter.txt");
   var Fso = new ActiveXObject("Scripting.FileSystemObject");
   var OpenStr = Fso.OpenTextFile(Path);
   var Str = OpenStr.ReadLine();
   OpenStr.Close();
   var Counter = parseInt(Str);
   Counter++;
   var CloseStr = Fso.CreateTextFile(Path);
   CloseStr.WriteLine(Counter);
   CloseStr.Close();
   Response.Write("Numero di Accessi: " + Counter);
%>
</body >
</html>
