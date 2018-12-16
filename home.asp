<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<%Server.Execute("header.asp")%>
<!--////////////////////////////////////////////////////////////////HEADER VE MENU BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

<div class="contettutucu">

<div class="content">

<div class="contentkonu">
<div class="contentbaslik">RESPONSE NESNESİ/CEVAP</div><div class="contentyazi"><img src="image/response_request.jpg" width="150" height="100" class="contentresim"/>
<p>Web sunucusunun ziyaretçinin bilgisayarına gönderilen bütün bilgiler,bu nesnenin öğeleridir.Bu nesneyi kullanarak ziyaretçiye istediğimiz bilgileri göndeririz.</p>  </div>
</div>

<div class="contentkonu">
<div class="contentbaslik">REQUEST NESNESİ/TALEP</div><div class="contentyazi"><img src="image/response_request2.jpg" width="150" height="100" class="contentresim"/><p>
Ziyaretçinin Web tarayıcı programından Web Sunucumuza ulaşan bütün bilgiler,Request(Talep) nesnesinin öğelerini belirler.Bu nesneyi kullanarak,istemciden gelen her türlü bilgiyi kullanabiliriz.</p></div>
</div>


<div class="contentkonu">
<div class="contentbaslik">COOKIES/ÇEREZLER</div>
<div class="contentyazi">
<img src="image/asp.jpg" width="150" height="100" class="contentresim"/>
<p>Web sunucuları ile istemciler arasındaki etkileşim her zaman için istemciden sunucuya doğrudur.Sunucu istemciden gelen bilgileri saklayabilirken,istemciler sunuculardan gelen bilgileri saklayamamaktadırlar.Bu sorun cookies ile çözülmüştür.Web sunucuları da çerez kullanarak istemci tarafında veri saklayabilmektedirler.Bir web sitesi bir istemcide en fazla 20 çerez barındırırken,bir istemci bütün web sitelerinden en fazla 300 adet çerez barındırabilir.</p></div>
</div>

<div class="contentkonu">
<div class="contentbaslik">SESSION/OTURUM NESNESİ</div>
<div class="contentyazi">
<img src="image/session.jpg" width="150" height="100" class="contentresim"/>
<p>Bir zayaretçi sitemizden bir sayfa talep ettiğinde,hangi sayfayı talep ettiği farketmezsizin,her ziyaretçi için ASP bir oturum açar veya ASP için her sayfa talebi bir oturumdur.Her oturumun belirli bir süre devam eden özellikleri,değişkenleri ve değerleri vardır.Site tasarımında oturum özelliklerinden geniş ölçüde yararlanılır.</p></div>
</div>

<div class="contentkonu">
<div class="contentbaslik">APPLICATION/UYGULAMA NESNESİ</div>
<div class="contentyazi"><img src="image/asp.jpg" width="150" height="100" class="contentresim"/>
<p>Bir ASP sitesi,bir uygulama programı gibi çalşır.ASP,ziyaretçi bir ASP sayfasından girerek talepte bulunduğunda,ziyaretçiyi uzaktan program çalıştıran blgisayar kullanıcısı olarak görür.Bu çalıştırılan program mantığı Application nesnesidir.</p></div>
</div>

<div class="contentkonu">
<div class="contentbaslik">SERVER/SUNUCU NESNESİ</div>
<div class="contentyazi">
<img src="image/asp.jpg" width="150" height="100" class="contentresim"/>
<p>ASP,Web sunucu programını bir nesne olarak ele aldığı için Server nesnesi ile Web sunucunun özelliklerine ulaşmamızı sağlar.</p></div>
</div>



</div>
<!--////////////////////////////////////////////////////////////////CONTENT BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
<div class="sidebartutucu">

<div class="sidebar">
<div class="sidebarbaslik">




<p>Siteyi Ziyaret Sayınız</p><p>
<% 
sayac=Request.Cookies("ziyaret") 
if(sayac!="")
	sayac++
	else
	sayac=1
if(sayac=="1"){
	
	Response.Write("1")	
	}else{
		
		Response.Write(sayac)
		}
	Response.Cookies("ziyaret")=sayac
	Response.Cookies("ziyaret").Expires="31.12.2014"
	%>

</p>
<p style="color:rgba(0,102,255,1);font:12px Georgia, 'Times New Roman', Times, serif;"><a href="cookies_sıfırla.asp">Sıfırla</a></p>
<hr />
<p>Online Kişi Sayısı</p> 
<p><% =Application("aktif") %><!--Online kişi sayısı--></p><br />
<hr />
<style>
a{text-decoration:none;font:12px Georgia, "Times New Roman", Times, serif;}
</style><br />
<a href="app_logout.asp">Oturumu Kapat</a>
</div>
</div>


<div class="sidebar3">
<div class="sidebarbaslik" style="font-size:15px;padding-top:10px;">Hoşgeldin,<%=Session("oturum")%><hr /></div>

<div style="margin:5px; text-align:center;font:15px Georgia, 'Times New Roman', Times, serif;color:rgba(255,51,0,1);" >
Bu vatan kefeniyle gezenlerin değil, kefensiz yatanlar sayesinde ayakta...

</div> 


</div>

<div class="sidebar2">
<div class="sidebarbaslik">HESAPLA</div>

<div style="height:250px; margin-left:10px;" >
<form name="frm">
Vize:<input type="text" name="s1" /><br /><br />
Final:<input  type="text" name="s2" /><br /><br />
<input type="button" name="hesap" value="Hesapla" onclick="hesapla(frm.s1.value,frm.s2.value)"/><br /><br />
<textarea cols="20" rows="3" name="ekran"></textarea>
</form>
</div>
</div>

</div>
<!--////////////////////////////////////////////////////////////////SIDEBAR TUTUCU BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->

<div class="temizle"></div>
<div class="temizle2"></div>
</div>
<!--////////////////////////////////////////////////////////////////CONTENT TUTUCU BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->


<div class="footer"> <div class="footeryazi"> ©  ASP DERS OTOMASYONU 2014 </div></div>
</div>
<!--////////////////////////////////////////////////////////////////FOOTER BİTTİ.\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->
</body>
</html>