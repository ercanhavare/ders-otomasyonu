<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<%
ad=Request.Cookies("ziyaret")("isim")
if(ad==Request.Form("kadi")){
	Response.Write("Sayın......:<b>"+ad+"</b>")
	tarih=Request.Cookies("ziyaret")("tarih")
	Response.Write("<br>Son Ziyaret Tarihi:"+tarih)
	}else{
		Response.Cookies("ziyaret").Expires="31.12.2014"
		Response.Cookies("ziyaret")("isim")=Request.Form("kadi")
		Response.Write("İlk Defa Geliyorsunuz.")
		}

var zaman=new Date()
var gun=zaman.getDate()
var ay=zaman.getMonth()+1
var yil=zaman.getFullYear()
Response.Cookies("ziyaret")("tarih")=gun+"."+ay+"."+yil


%>



</body>
</html>
