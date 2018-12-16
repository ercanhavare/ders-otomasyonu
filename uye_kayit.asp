<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>ASP DERS OTOMASYONU</title>
<link rel="stylesheet" media="all" href="oturum.css" type="text/css" />
<title>Üye Kayıt</title>
</head>
<style>


.giris{
	width:500px; 
	height:320px;
	background-color:rgba(0,153,255,0.7);
	padding-top:10px;
	margin:auto;
	margin-top:150px;
	border-radius:5px;
	
	}
td,input,submit{
	border-radius:5px;
	color:rgba(255,51,0,1);}
</style>
<body>

<div class="giris">
<form name="giris" action="cookie.asp" method="post">
<table width="500" border="0">
 <tr>
   <td height="100" colspan="2" align="center"><b>ÜYE OL</b>
     <hr /></td></tr>
 
  <tr>
    <td width="151" height="50" style="padding-left:50px;">Kulanıcı adı...:</td>
    <td width="339"><input type="text" name="kadi" ></td>
  </tr>
  <tr>
    <td height="50" style="padding-left:50px;">Parola............:</td>
    <td><input type="password" name="parola"></td>
  </tr>
 
  <tr>
  <td height="79" style="padding-left:50px;">
</td>
 <td >
 
 <input type="submit" value="KAYDET" style="margin-left:110px;"/></td>
  </tr>
  <tr>
  <td colspan="2" style="padding-left:50px;color:rgba(255,0,0,1);"></td>
  </tr>
</table>
</form>

</div>



</body>
</html>
