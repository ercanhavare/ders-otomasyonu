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
	text-align: left;
}
p{color:rgba(255,51,0,1);font:bold 16px Georgia, "Times New Roman", Times, serif;text-align:center;margin-top:40px;}
span{font-family:Georgia, 'Times New Roman', Times, serif;color:rgba(0,153,102,1);"}
</style>
</head>
<body>
<% Server.Execute("header.asp") %>
<div class="contettutucu">

<div class="contentalt">

<p>WEB BİLGİLERİM<hr /></p>
<table width="700" border="0" align="center">
  <tr>
    <td width="200" height="30">Kullanıcı Adı</td>
    <td width="289"><span><% =Session("oturum") %></td>
  </tr>
  <tr>
    <td height="30">Oturum ID</td>
    <td><span><% =Session.SessionID%></span></td>
  </tr>
  <tr>
    <td height="30">Hostta Kurulu Browser</td>
    <td><span><% =Request.ServerVariables("http_user_agent")%></span></td>
  </tr>
  <tr>
    <td height="30">Sunucu Adı</td>
    <td><span><% =Request.ServerVariables("Server_name")%></span></td>
  </tr>
  <tr>
    <td height="30">Bilgisayarınızın Adı</td>
    <td><span><% =Request.ServerVariables("Remote_host")%></span></td>
  </tr>
  <tr>
    <td height="30">İnternete Çıkış Portu</td>
    <td><span><% =Request.ServerVariables("Server_port")%></span></td>
  </tr>
  <tr>
    <td height="30">Ip Adresi</td>
    <td><span><% =Request.ServerVariables("Remote_addr")%></span></td>
  </tr>
  <tr>
    <td height="30">Son Ziyaret Tarihi</td>
    <td><span>
    

<%
ad=Request.Cookies("ziyaret")("isim")
if(ad==Session("giris")){
	tarih=Request.Cookies("ziyaret")("tarih")
	Response.Write(tarih)
	}else{
		Response.Cookies("ziyaret").Expires="31.12.2014"
		Response.Cookies("ziyaret")("isim")=Session("giris")
		Response.Write("Sitemize İlk Defa Geliyorsunuz.")
		}

var zaman=new Date()
var gun=zaman.getDate()
var ay=zaman.getMonth()+1
var yil=zaman.getFullYear()
var ssaat=zaman.getHours()
var dakika=zaman.getMinutes()
var saniye=zaman.getSeconds()
Response.Cookies("ziyaret")("tarih")=gun+"."+ay+"."+yil
%>
    

    
    </span></td>
  </tr>
  <tr>
    <td height="30">Son Ziyaret Saati</td>
    <td><span>
    
    <%
ad=Request.Cookies("ziyaret")("isim")
if(ad==Session("giris"))
{
	saat=Request.Cookies("ziyaret")("saat")
	Response.Write(saat)
}

Response.Cookies("ziyaret")("saat")=ssaat+"."+dakika+"."+saniye

%> 
  </span> 
  </td>
  </tr>
 <tr><td colspan="2"><div class="footeralt"><hr />ASP DERS OTOMASYONU</div></td></tr>
</table>
    </div>





</div>
<!--////////////////////////////////////////////////////////////////CONTENT BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


<!--////////////////////////////////////////////////////////////////FOOTER BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
</body>
</html>