<!DOCTYPE html>
<html>
<head>
	<title>table</title>
	<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
<div class="navbar">
  <a href="default.asp">Home</a>
  <a href="forum.asp">Forum</a>
  <a href="video.html">Video album</a>
  <a href="#">Contact</a>
  <a href="people.html">people</a>
  <a href="map.html">Map</a>
  <a href="photos.html">Photos</a>
</div>
	<h2>Contact information off all members</h2>


<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("BenimVT.mdb"))
ssql="select * from Table1; "
Set oRS = oConn.Execute(sSQL)
%>

<table class="styled-table">
  <tr><thead>
    <td>Name</td>
    <td>Email</td>
    <td>Gender</td>

  </tr>
  </thead>
<%
Do While NOT oRS.EOF
%>
  <tr>
    <td><%=oRS("name")%></font>&nbsp;</td>
    <td><%=oRS("email")%></font>&nbsp;</td>
    <td><%=oRS("gender")%></font>&nbsp;</td>

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
</html




.wrapper {
	margin-bottom: -15px;
	background: url(school.jpg) no-repeat;
	background-size: cover;
	height: 100%;
}
