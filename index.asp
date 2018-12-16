<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>ASP DERS OTOMASYONU</title>
<link rel="stylesheet" media="all" href="oturum.css" type="text/css" />
<title>Untitled Document</title>
</head>
<style>


.giris{
	width:500px; 
	height:320px;
	border-radius:5px;
	background-color:rgba(0,153,255,0.7);
	padding-top:10px;
	margin:auto;
	margin-top:150px;
	
	}
td,input,submit{
	text-decoration:none;
	border-radius:5px;
	color:rgba(255,51,0,1);}
a{
	text-decoration:none;
	color:rgba(255,51,0,0.8);}
a:hover{color:rgba(255,0,0,1);}
</style>
<body>
<%
'Kullanıcı adı ve parola doğrulama'
kadi=Request.Form("kadi")
parola=Request.Form("parola")
if(Request.ServerVariables("REQUEST_METHOD")=="POST"){
	if(kadi==Request.Cookies("login")("kadi") && parola==Request.Cookies("login")("parola")){
		giris=1
		
		kadi=Request.Cookies("login")("kadi")
		parola=Request.Cookies("login")("parola")
		if(kadi==Request.Form("kadi") && parola==Request.Form("parola"))
		{
		Session("oturum")=Request.Form("kadi").item
		}		
		
		Response.Redirect("home.asp")
		}else if(kadi=="" || parola==""){
		var	hata="Kullanıcı adı veya parolayı boş girdiniz."
			
			}else{ var hata="Kullanıcı adı veya parola yanlış girildi."
			}	
	}


%>
<%
''
var giris
if(giris!=1){
	
	
	'Giriş false ise '
	

%>

<div class="giris">
<form name="giris" action="" method="post">
<table width="500" border="0">
 <tr><td height="100" colspan="2" align="center"><b>Kullanıcı Girişi</b><hr /></td></tr>
 
  <tr>
    <td width="151" height="50" style="padding-left:50px;">Kulanıcı adı...:</td>
    <td width="339"><input type="text" name="kadi" ></td>
  </tr>
  <tr>
    <td height="50" style="padding-left:50px;">Parola............:</td>
    <td><input type="password" name="parola"></td>
  </tr>
 
  <tr>
  <td height="79" style="padding-left:50px;"><a href="Uye_kayit.asp">Üye ol</a></td>
 <td >
 
 <input type="submit" value="Gönder" style="margin-left:110px;"/></td>
  </tr>
  <tr>
  <td colspan="2" style="padding-left:50px;color:rgba(255,0,0,1);">
  
  <%Response.Write(hata);if(Request.QueryString("hata")=="uyari")%>
  <script language="javascript">alert("Lütfen giriş yapınız.")</script>
  
  <%if(Request.QueryString("kayit")=="kabul")%>
  <script language="javascript">alert("Üye kaydınız tamamlandı.")</script>
  
  <%if(Request.QueryString("kayit")=="red")%>
  <script language="javascript">alert("Üye kaydınız yapılamadı.")</script>
  
  
  </td>
  </tr>
</table>
</form>
<%
}else{
	'Giriş true ise'
	Response.Redirect("home.asp")
	}

%>
</div>



</body>
</html>
