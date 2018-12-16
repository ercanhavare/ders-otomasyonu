<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cookie</title>
</head>
<body>
<%
kadi=Request.Form("kadi")
parola= Request.Form("parola")
if(kadi!="" && parola!="")
{
	Response.Cookies("login").Expires="31.12.2014"
	Response.Cookies("login")("kadi")=kadi
	Response.Cookies("login")("parola")=parola
	Response.Redirect("index.asp?kayit=kabul")
}
else Response.Redirect("index.asp?kayit=red")
%>


</body>
</html>
