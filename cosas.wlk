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
}


