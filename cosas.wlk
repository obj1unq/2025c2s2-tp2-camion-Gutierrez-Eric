object knightRider {
	
	method peso() { 
		return 500 
	}

	method nivelPeligrosidad() {
		 return 10 
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}

	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() == nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		return 1
	}
}

object arenaAGranel {

	var property peso = 0

	method nivelPeligrosidad(){
		return 1
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}

	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() == nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		return 1
	}
}

object bumblebee {
	var property estaTransformadoAuto = true

	method peso(){
		return 800
	}

	method nivelPeligrosidad(){
		if(estaTransformadoAuto){
			return 15
		} else {
			return 30
		}
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}

	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() == nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		return 2
	}
}

object paqueteLadrillos {
	var property cantLadrillos = 2
	const pesoLadrillo = 2
	
	method peso(){
		return pesoLadrillo * cantLadrillos
	}

	method nivelPeligrosidad(){
		return 2
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}

	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() == nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		if(cantLadrillos <= 100){
			return 1
		} else if(cantLadrillos <= 300){
			return 2
		} else {
			return 3
		}
	}
}

object bateriaAntiaerea{
	var property tieneMisiles = true

	method peso(){
		if(tieneMisiles){
			return 300
		}else{
			return 200
		}
	}

	method nivelPeligrosidad(){
		if(tieneMisiles){
			return 100
		} else{
			return 0
		}
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}

	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() == nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		if(not self.tieneMisiles()){
			return 1
		}else {
			return 2
		}
	}
}


object residuosRadioactivos {
	var property peso = 0

	method nivelPeligrosidad(){
		return 200
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}

	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(_nivelPeligrosidad){
		return self.nivelPeligrosidad() == _nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}
	method cantBultos(){
		return 1
	}
}

object contenedorPortuario{
	const property cosas = []
	const property pesoBase = 100

	method peso(){
		return pesoBase + self.pesoTotalDeContenido()
	}

	method cargarCosas(unaCosa){
		cosas.add(unaCosa)
	}

	method pesoTotalDeContenido(){
		return cosas.sum({cosa => cosa.peso()})
	}

	method nivelPeligrosidad(){
		if(not self.esContenedorVacio()){
			return self.nivelPeligrosidadMasAlto()
		}else{
			return 0
		}
	}

	method nivelPeligrosidadMasAlto(){
		return self.nivelPeligrosidadDeCosas().max()
	}

	method nivelPeligrosidadDeCosas(){
		return cosas.map({cosa => cosa.nivelPeligrosidad()})
	}

	method esContenedorVacio(){
		return cosas.isEmpty()
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}
	
	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(_nivelPeligrosidad){
		return self.nivelPeligrosidad() == _nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		return 1 + self.cantBultosDeCosasQueTiene()
	}

	method cantBultosDeCosasQueTiene(){
		return self.bultosDeCosasQueTiene().sum()
	}

	method bultosDeCosasQueTiene(){
		return cosas.map({cosa => cosa.cantBultos()})
	}
}

object embalaje{
	var property envuelve = null

	method peso(){
		return envuelve.peso()
	}

	method nivelPeligrosidad(){
		return envuelve.nivelPeligrosidad()/2
	}

	method pesaPar(){
		return (self.peso() % 2) == 0
	}
	
	method pesaIgual(unPeso){
		return self.peso() == unPeso
	}

	method tienePeligrosidad(_nivelPeligrosidad){
		return self.nivelPeligrosidad() == _nivelPeligrosidad
	}

	method tieneMasPeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidad() > nivelPeligrosidad
	}

	method pesaEntre(minimo,maximo){
		return (minimo < self.peso()) and (maximo > self.peso())
	}

	method cantBultos(){
		return 2
	}
}

