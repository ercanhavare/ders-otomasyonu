f<% Server.Execute("header.asp") %>
<style>
input,textarea,hr{border-radius:5px;color:rgba(255,102,0,1);border:1px solid green;}
td{color:rgba(255,51,0,1);font:14px Georgia, "Times New Roman", Times, serif;}
p{color:rgba(255,51,0,1);font:bold 16px Georgia, "Times New Roman", Times, serif;text-align:center;margin-top:40px;}
</style>
<div class="contettutucu">

<div class="contentalt">
<p>Ziyaretçi Defteri<hr /></p>
    <form name="ziyaret" action="zkayit.asp" method="post">
    <table height="500" align="center"><tr><td>
<table width="500" border="0" align="center" >
 <tr><td colspan="2">
 
 <% if(Request.QueryString("mesaj")=="bos"){%><script language="javascript">alert("Boş değer girdiniz.")</script><% } %>
 <% if(Request.QueryString("mesaj")=="kayit"){%><script language="javascript">alert("Ziyaretci defterine kaydoldunuz.")</script><% } %>
 
 </td></tr>
  <tr>
    <td width="109" height="77"></td>
    <td width="385">Adınız<br /><input type="text" name="ad" size="25"><br /><br /></td>
  </tr>
  <tr>
    <td height="50">&nbsp;</td>
    <td>Soyadınız<br /><input type="text" name="soyad" size="25"><br /><br /></td>
  </tr>
  <tr>
    <td height="50">&nbsp;</td>
    <td>E-posta<br /><input type="text" name="eposta" size="25"><br /><br /></td>
  </tr>
  <tr>
    <td height="171">&nbsp;</td>
    <td valign="bottom">Yorumunuz<br /><textarea cols="35" rows="8" name="yorum"></textarea></td>
  </tr>
  <td height="80">&nbsp;</td>
 <td valign="bottom" ><input type="reset" value="Temizle" style="margin-left:50px;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Gönder" /></td>
  </tr>
</table>
</form>
</td>
</tr>
<tr><td><div class="footeralt"><hr />ASP DERS OTOMASYONU</div></td></tr>
</table>
    </div>





</div>
<!--////////////////////////////////////////////////////////////////CONTENT BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


<!--////////////////////////////////////////////////////////////////FOOTER BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
</body>
</html>