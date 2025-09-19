import cosas.*
import almacen.*

object camion {
	const property cosas = #{}
	const property pesoTara = 1000
	const property pesoMaximo = 2500
		
	method cargar(unaCosa) {
		self.validarCargaDe(unaCosa)
		cosas.add(unaCosa)
	}

	method descargar(unaCosa){
		self.validarDescargaDe(unaCosa)
		cosas.remove(unaCosa)
	}

	method validarCargaDe(unaCosa){
		if(self.estaCargada(unaCosa)){
			self.error ("Ya tiene cargado" + unaCosa)
		}
	}

	method validarDescargaDe(unaCosa){
		if(not self.estaCargada(unaCosa)){
			self.error("No tiene cargado" + unaCosa)
		}
	}

	method estaCargada(unaCosa){
		return cosas.contains(unaCosa)
	}

	method pesoDeCosasPar(){
		return cosas.all({cosa => cosa.pesaPar()})
	}

	method tieneCosaConPeso(unPeso){
		return cosas.any({cosa => cosa.pesaIgual(unPeso)})
	}

	method pesoTotalCamion(){
		return pesoTara + self.pesoTotalCarga()
	}
	
	method pesoTotalCarga(){
		return cosas.sum({cosa => cosa.peso()})
	}

	method estaExcedidoDePeso(){
		return self.pesoTotalCamion() > pesoMaximo
	}

	method algoCargadoConPeligrosidad(nivelPeligrosidad){
			return cosas.find({cosa =>cosa.tienePeligrosidad(nivelPeligrosidad)})
	}

	method cargaConMasPeligrosidad(nivelPeligrosidad){
		return cosas.filter({cosa => cosa.tieneMasPeligrosidad(nivelPeligrosidad)})
	}

	// En este caso al usar el not me toma <= (Nose si a esto se referia con el tip dado)
	method cargaConMenosPeligrosidad(nivelPeligrosidad){
		return cosas.filter({cosa => not (cosa.tieneMasPeligrosidad(nivelPeligrosidad))})
	}

	method nivelPeligrosidadCarga(){
		return cosas.sum({cosa => cosa.nivelPeligrosidad()})
	}

	method puedeCircularRutaConLimitePeligrosidad(nivelPeligrosidad){
		return not self.estaExcedidoDePeso() and not self.superaLimitePeligrosidad(nivelPeligrosidad)
	}

	method superaLimitePeligrosidad(nivelPeligrosidad){
		return self.nivelPeligrosidadCarga() > nivelPeligrosidad
	}

	method tieneAlgoQuePeseEntre(minimo,maximo){
		return cosas.any({cosa => cosa.pesaEntre(minimo,maximo)})
	}

	method laCosaMasPesada(){
		return cosas.find({cosa => cosa.pesaIgual(self.mayorPesoDeCosas())})
	}

	method pesoDeCosas(){
		return cosas.map({cosa => cosa.peso()})
	}

	method mayorPesoDeCosas(){
		return self.pesoDeCosas().max()
	}

	method totalBultosQueTransporta(){
		return self.bultos().sum()
	}
	method bultos(){
		return cosas.map({cosa => cosa.cantBultos()})
	}

	method sufreAccidente(){
		cosas.forEach({cosa => cosa.efectoAccidente()})
	}
}


