<%
dim username, user

Response.Buffer=True
Response.Expires = -100
  
username=request.form("username")
password=request.form("password")

Veritabani_Yol=SERVER.MAPPATH("BenimVT.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")

Sorgu="select * from Table1 where username = '" & request.form("username") & "' and password = '" & Request.form("password") & "'"
    Set grup = Baglanti.Execute(sorgu) 'ppp
    

    Rs.Open Sorgu, Baglanti, 1, 3
    If RS.BOF And RS.EOF Then 
        Response.Write "The informations did not match. Wrong username or password."
    Else
        user = grup("name")
          Session("UserLoggedIn") = user 
        Response.Write "The given informations are correct."
        %>
        
      <a href="default.asp">Click here to continue...</a>    
    <%
    End If
    %>