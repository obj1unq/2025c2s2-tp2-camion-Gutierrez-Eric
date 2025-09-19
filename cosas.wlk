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
}

