object neo{
    var energia = 100

    method elegido() = true 
    method energia() = energia
    method saltar() = energia / 2
    method vitalidad() = energia / 10
}

object morfeo{
    var vitalidad = 8
    var cansado = false

    method vitalidad() = vitalidad
    method cansado() = cansado
    method saltar() = !cansado && vitalidad - 1
    method elegido() = false

}

object trinity {
    method vitalidad() = 0
    method saltar() = 0
    method elegido() = false
}

object nave{
    var pasajeros = []
    method bajar(pasajero) {pasajeros.remove(pasajero)}
    method subir(pasajero) {pasajeros.add(pasajero)}

    method cantidadDePasajeros() = pasajeros.length()
    method pasajeroMayorVida() = pasajeros.max({p => p.vitalidad()})
    method estaElElegido() = pasajeros.contains(neo)
    
}


object naveChoca{
    method todosPasajerosSaltan() = nave.pasajeros.saltar()
    method vaciarNave() = nave.pasajeros.map({p => p.bajar(p)})

}

object naveAcelera{
    
}