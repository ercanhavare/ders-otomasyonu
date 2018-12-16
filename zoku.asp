<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<style>
input,textarea,hr{border-radius:5px;color:rgba(255,102,0,1);border:1px solid green;}
td{
	color: rgba(255,51,0,1);
	font: 14px Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	text-align: center;
	padding-top:10px;
}
p{color:rgba(255,51,0,1);font:bold 16px Georgia, "Times New Roman", Times, serif;text-align:center;margin-top:40px;}
th{font-family:Georgia, 'Times New Roman', Times, serif;color:rgba(0,153,102,1); text-align:center;border-bottom:1px dashed #009999; line-height:50px;}
</style>
</head>
<body>
<% Server.Execute("header.asp") %>
<div class="contettutucu">

<div class="contentalt">
<p>ZİYARETCİ YORUMLARI<hr /></p>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th width="88" scope="col">Ad</th>
    <th width="191" scope="col">Soyad</th>
    <th width="245" scope="col">E-posta</th>
    <th width="299" scope="col">Yorum</th>
  </tr>

<%

fso=Server.CreateObject("Scripting.FileSystemObject")
dosya=fso.OpenTextFile(Server.MapPath("/okul/kayit.txt"),1)
do
{
ad=dosya.ReadLine(); soyad=dosya.ReadLine()
eposta=dosya.ReadLine(); yorum=dosya.ReadLine()
%>
<tr>
<td valign="top"><%=ad%></td>
<td valign="top"><%=soyad%></td>
<td valign="top"><%=eposta%></td>
<td height="50" valign="top"><%=yorum%></td>

</tr>
<%
}
while(dosya.AtEndOfStream==false)
dosya.Close()
%>
 <tr><td colspan="4"><div class="footeralt"><hr />ASP DERS OTOMASYONU</div></td></tr>
</table>
    </div>





</div>
<!--////////////////////////////////////////////////////////////////CONTENT BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


<!--////////////////////////////////////////////////////////////////FOOTER BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
</body>
</html>