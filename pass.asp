<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection")
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="&Server.MapPath("BenimVT.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "Table1", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew
'Tablodaki alanlara veri aktarma
Tablom("name") = request("name")
Tablom("email") = request("email")
Tablom("username") = request("username")
Tablom("password") = request("password")
Tablom("birthday") = request("birthday")
Tablom("gender") = request("gender")
Tablom("phonenumber") = request("phonenumber")

Tablom.Update
Tablom.close
  set Tablom= Nothing
  Baglantim.close
  set Baglantim= Nothing

response.write "Your information was entered sucessfully!"
%>
<p><a href="default.asp">Go to home</a></p>
