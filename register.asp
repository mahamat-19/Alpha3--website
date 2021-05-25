< meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<body style="background-color :"#EFD066";
</body>
<%

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection")
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="&Server.MapPath("registerdb.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "registerdb", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew
'Tablodaki alanlara veri aktarma
Tablom ("name")= Request("name")
Tablom ("surname")= Request("surname")
Tablom ("std_No")= Request("std_No")
Tablom ("email")= Request("email")
Tablom ("password") = Request("password")
Tablom ("phone_No")= Request("phone_No")
Tablom ("adress")= Request("adress")
Tablom.Update
response.write "your info are successfully entered!"
%>
<p><a href="homepage.html" target ="_parent">Home page</a></p>
