// JavaScript Document

src="http://www.google.com.tr/cse/brand?form=cse-search-box&amp;lang=tr"





function hesapla(s1,s2){
	var nt1=parseInt(s1);
	var nt2=parseInt(s2);
	if(nt1<0 || nt2>100){
		alert("Vize notu sıfır(0)'dan küçük final notu 100'den büyük giremezsiniz.")}
	var ort=Math.round((nt1*0.4)+(nt2*0.6));
	if(ort>=50 && nt2>=30){
		if(ort<=30) harf="FF"
		else if(ort<=40) harf="FD"
		else if(ort<=50) harf="DD"
		else if(ort<=55) harf="DC"
		else if(ort<=60) harf="CC"
		else if(ort<=70) harf="CB"
		else if(ort<=80) harf="BB"
		else if(ort<=90) harf="BA"
		else if(ort<=100) harf="AA"
		}
		else harf="FF"
	frm.ekran.value=("Ders ortalamanız "+ort+ " Harf karşılığı "+harf);
	}


