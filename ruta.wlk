import camion.*

object ruta9 {
    const property peligrosidadPermitidaHasta = 20
    
    method puedeCircular(camion){
        return camion.puedeCircularRutaConLimitePeligrosidad(peligrosidadPermitidaHasta)
    }
}

object rutaVecinal {
    var property  pesoPermitidoHasta = 2000

    method puedeCircular(camion){
        return camion.pesoTotalCamion() < pesoPermitidoHasta
    }
}