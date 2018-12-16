<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<% Server.Execute("header.asp") %>
<style>
input,textarea,hr{border-radius:5px;color:rgba(255,102,0,1);border:1px solid green;}
td{color:rgba(255,51,0,1);font:14px Georgia, "Times New Roman", Times, serif;}
p{color:rgba(255,51,0,1);font:bold 16px Georgia, "Times New Roman", Times, serif;text-align:center;margin-top:40px;}
</style>
<div class="contettutucu">

<div class="contentalt">
<center><p>BİLGİLERİM<hr /></p></center>
<table width="500" border="0" align="center" >

<td>
<%
adi=Request.Form("adi")
soyadi=Request.Form("soyadi")
tarih=Request.Form("tarih")
takim=Request.Form("takim")
cinsiyet=Request.Form("cinsiyet")
hobi=Request.Form("hobi")

Response.Write ("<b>Adınız:</b> "+adi+"<br><br>")
Response.Write ("<b>Soyadınız:</b> "+soyadi+"<br><br>")
Response.Write ("<b>Doğum Tarihim:</b> "+tarih +"<br><br>")
Response.Write ("<b>Takımım:</b> "+takim+"<br><br>")
Response.Write ("<b>Cinsiyetim:</b> "+cinsiyet+"<br><br>")
Response.Write ("<b>Hobilerim:</b> "+hobi)

%>
</td>

<tr><td><div class="footeralt"><hr />ASP DERS OTOMASYONU</div></td></tr>
</table>
    </div>





</div>
<!--////////////////////////////////////////////////////////////////CONTENT BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


<!--////////////////////////////////////////////////////////////////FOOTER BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
</html>