window.addEventListener ("scroll",function(){
// grazie a https://www.gabrielegerbo.it/aggiungere-pulsante-torna-su/

if (window.pageYOffset>300)
	{	document.getElementById ("TornaSu").style.display= "block";	}
else if (window.pageYOffset<300)
	{	document.getElementById ("TornaSu").style.display= "none";	}

val[0].innerHTML= "PageYOffset = "+window.pageYOffset
}, !1);