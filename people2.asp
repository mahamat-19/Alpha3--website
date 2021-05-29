<a href="photos.html">Back to photos</a><br>


<%
If Session("UserLoggedIn") <>"" Then

Response.Write "Welcome <b>" & Session("UserLoggedIn") & "</b>" 

%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="people2.css">
</head>
<body>
<div class="container">
    <ul>
     <li id="vid"><img src="people3.jpeg" height="400" width="600" ></li>

  <form method="post" action="Ptable2.asp"> 
  <input type=hidden name="Now" value=<%=time()%> >
<li><strong>Enter your name please:</strong><br> <input type="text" name="name"> <br></li>
<li><strong>Your comment :</strong><br> <textarea name="comment" rows="2" cols="30"></textarea><br></li>

  
  
  <input type="submit" name="submit"><br>
</form>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("BenimVT.mdb"))
ssql="select * from Ptable1; "
Set oRS = oConn.Execute(sSQL)
%>

<table border="1" width="85%" cellspacing="0" cellpadding="0" bordercolor="#000000" style="border-collapse: collapse; text-align:center">
  <tr>
    <td width="36%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana">Name</font></b></td>
    <td width="36%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana">Date</font></b></td>
    <td width="36%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana">Comment</font></b></td>
  </tr>
<%
Do While NOT oRS.EOF 
%>
  <tr>
    <td width="36%" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("name")%></font>&nbsp;</td>
    <td width="36%" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%Response.Write(Now)%></font>&nbsp;</td>
    <td width="36%" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("Comment")%></font>&nbsp;</td>
  </tr>  
<%  
  oRS.MoveNext 
Loop
%>
</table>
          </center>
<%
oConn.Close
Set oRS = Nothing
Set oConn = Nothing
%>
     
  
   </div>
</body>
</html>
<%
else 
response.redirect "login.html"
end if