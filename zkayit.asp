<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%  
	ad=Request.Form("ad")
	soyad=Request.Form("soyad")
	eposta=Request.Form("eposta")
	yorum=Request.Form("yorum")
	
	if(ad==""||soyad==""||eposta==""||yorum=="") Response.Redirect("ziyaretci.asp?mesaj=bos")



fso=Server.CreateObject("Scripting.FileSystemObject")
if(fso.FileExists(Server.MapPath("/okul/kayit.txt"))==true)
	dosya=fso.OpenTextFile(Server.MapPath("/okul/kayit.txt"),8)
 else
	dosya=fso.CreateTextFile(Server.MapPath("/okul/kayit.txt"),2)
	dosya.WriteLine(Request.Form("ad"))
	dosya.WriteLine(Request.Form("soyad"))
	dosya.WriteLine(Request.Form("eposta"))
	dosya.WriteLine(Request.Form("yorum"))
	dosya.Close()
	
	Response.Redirect("ziyaretci.asp?mesaj=kayit")
%>



</body>
</html>
