import cosas.*

object almacen {
    const property almacena = #{}
    
    method almacenar(unaCosa){
        almacena.add(unaCosa)
    }

    method descargaDe(cosas){
         almacena.addAll(cosas)
    }
}