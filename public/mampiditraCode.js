
	var pejy = document.getElementById('pejy');
	var pejyMiasa = pejy.value;
	var login = document.getElementById('login');
	var page1 = document.getElementById('page1');
	var page2 = document.getElementById('page2');

	function manomboka() {
		alert('lasa');
	 	login.style.display = "none";
	 	page1.style.display = "none";
	 	page2.style.display = "none";
	 	document.getElementById(p).style.display = "block";
	}

	class Olona {
		constructor(anarana, code) {
			this.anarana = anarana;
			this.code = code;
		}
	}

	var	rajao = new Olona('RAJAONARISON Fidel', "0123456789");	
	var	rabeza =  new Olona('Societé RABEZA', "0000000000");	
	var	taratra =  new Olona('Agence TARATRA', "1111111111");	
	var	bakoly =  new Olona('Tranombarotra BAKOLY', "2222222222");	

	function sub() {
		alert('iiiiiiiiiiiiiiiiiiiiii');
		var code = document.getElementById('code');
		var	olona = document.getElementById('olona').value;
		if (code.value == rajao.code) {
			olona = rajao.anarana;
			login.style.display = "none";
			page1.style.display = "block";
		}else if (code.value == taratra.code ){
			olona = taratra.anarana;
			login.style.display = "none";
			page1.style.display = "block";
		}
		else {
			alert('Mauvaise autentification');
		}
	}