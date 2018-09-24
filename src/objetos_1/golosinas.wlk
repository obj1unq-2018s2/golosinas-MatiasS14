class Bombon {
	var peso = 15
	
	method precio() { return 5 }
	
	method peso() { return peso }
	
	method mordisco() { peso = peso * 0.8 - 1 }
	
	method gusto() { return "frutilla" }
	
	method libreGluten() { return true }
}

class Alfajor {
	var peso=300
	
	method precio() { return 12 }
	
	method peso() { return peso }
	
	method mordisco() { peso = peso * 0.8 }
	
	method gusto() { return "chocolate" }
	
	method libreGluten() { return false }
}

class Caramelo {
	var peso=5
	
	method precio() { return 1 }
	
	method peso() { return peso }
	
	method mordisco() { peso = peso - 1 }
	
	method gusto() { return "frutilla" }
	
	method libreGluten() { return true }
}

class Chupetin {
	var peso=7
	
	method precio() { return 2 }
	
	method peso() { return peso }
	
	method mordisco() { 
		
		if(peso > 2){
			peso= peso * 0.4
		}
	}
	
	method gusto() { return "naranja" }
	
	method libreGluten() { return true }
}

class Oblea {
	var peso=250
	
	method precio() { return 5 }
	
	method peso() { return peso }
	
	method mordisco() { 
		
		if(peso > 70){
		 peso= peso / 2
		 }
		 else { peso= peso / 4}
	}
	
	method gusto() { return "vainilla" }
	
	method libreGluten() { return false }
}

class Chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual 
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	
	method precio(){return 0.50 * pesoInicial}	

	method peso(){return pesoActual}
	
	method mordisco(){pesoActual-=2}
	
	method gusto(){return "chocolate"}
	
	method libreGluten(){return false}
}

class GolosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	
	method precio() { return golosinaInterior.precio() + 2}
	
	method peso() { return golosinaInterior.peso() + pesoBanio }
	
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	
	method libreGluten() {return golosinaInterior.libreGluten()}	
}

class Tuttifrutti {
	var property libreGluten
	var sabores= ["frutilla","chocolate","naranja"]
	var saborActual= "frutilla"
	method peso(){return 5}
	
	method precio(){
		return if(libreGluten) {7} else{10}
	}
	
	method saborActual(){return saborActual}
	
	method mordisco(){
		
		if(saborActual ==sabores.head() ){
			sabores.remove(saborActual)
			sabores.add(saborActual)
			saborActual= sabores.head()
			
		}
	}
}

