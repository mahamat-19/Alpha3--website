<%
If Session("UserLoggedIn") <>"" Then

Response.Write "Welcome <b>" & Session("UserLoggedIn") & "</b>"

%>



<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="forum.css">
</head>
<div class="navbar">
  <a href="default.asp">Home</a>
  <a href="forum.asp">Forum</a>
  <a href="video.html">Video album</a>
  <a href="table.asp">Contact</a>
  <a href="people.html">people</a>
  <a href="photos.html">Photos</a>
</div>

<div class="box-2">
   <h2>Welcome to the forum section</h2>



<form method="post" action="logged.asp">
  <input type=hidden name="Now" value=<%=time()%> >
<li><strong>Enter your name please:</strong><br> <input type="text" name="name"> <br></li>
<li><strong>Your comment :</strong><br> <textarea name="comment" rows="2" cols="30"></textarea><br></li>



  <input type="submit" name="submit"><br>
</form>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("BenimVT.mdb"))
ssql="select * from Ftable; "
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


</body>
</html>

<%
else
response.redirect "login.asp"
end if
