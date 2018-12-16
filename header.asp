

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%

if(Session("oturum")!=Request.Cookies("login")("kadi")) Response.Redirect("index.asp?hata=uyari")

%>
<title>ASP DERS OTOMASYONU</title>
<link rel="stylesheet" href="style.css" media="all" type="text/css" />
<script type="text/javascript" src="javascript.js"/></script>
</head>

<body>

<div class="ana">

<div class="menu">
<img src="image/headerimg2.jpg" width="1025" height="215" class="resim"/>







<a href="home.asp">ANASAYFA</a>|<a href="hakkimizda.asp">HAKKIMIZDA</a>|<a href="tanit.asp">KENDİNİ TANIT</a>|<a href="web_bil.asp">BİLGİLERİM</a>|<a href="ziyaretci.asp">YORUM YAP</a>|<a href="zoku.asp">YORUMLAR</a>
</div>