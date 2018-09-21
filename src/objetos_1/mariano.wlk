import golosinas.*

object mariano {
	var bolsaDeGolosinas= []
		
	method comprar(golosina) { bolsaDeGolosinas.add(golosina) }
	
	method desechar(golosina){ bolsaDeGolosinas.removeAll(golosina) }
	
	method golosinas() {return bolsaDeGolosinas	}
	
	method probarGolosinas() { bolsaDeGolosinas.forEach{golosina => golosina.mordisco()} }
	
	method hayGolosinaSinTACC(){ return bolsaDeGolosinas.any{golosina => golosina.libreGluten()} }
	
	method preciosCuidados(){ bolsaDeGolosinas.all{golosina => golosina.precio()<10} }
	
	method golosinaDeSabor(unSabor){return bolsaDeGolosinas.find{golosina => golosina.gusto() ==unSabor} }
	
	method golosinasDeSabor(unSabor){return bolsaDeGolosinas.filter{golosina=> golosina.gusto()==unSabor} }
	
	method sabores(){
		return bolsaDeGolosinas.map{golosina=>golosina.gusto()}.withoutDuplicates()
	}
	
	method golosinaMasCara(){return bolsaDeGolosinas.max{golosina=> golosina.precio() } }
	
	method pesoGolosinas(){return bolsaDeGolosinas.sum{golosina=>golosina.peso()} }
	
	method golosinasFaltantes(golosinasDeseadas){ 
		
		return golosinasDeseadas.filter{golosina=> not bolsaDeGolosinas.contains(golosina)}
	}
	
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.filter{gusto=> not self.sabores().contains(gusto) }
	}
}

