// El paquete de George Lucas

object paquete {
 //variables
	var property pagado = null
	var property destino = null
 // metodos funcionales
	method puedeEntregarlo(mensajero) {
		return pagado and destino.puedePasar(mensajero)
	}
}

// Trabajadores de la empresa de mensajeria

object jeanGray {
 //metodos funcionales
	method pesoTotal() {
		return 65
	}

	method puedeLlamar() {
		return true
	}
}

object neo {
 //variables
	var credito = null
 //getters

	method puedeLlamar() {
		return credito
	}
 //setters
	method tieneCredito(_credito) {
		credito = _credito
	}
 //metodos funcionales
 	method pesoTotal() {
		return 0
	}
}

object saraConor {
 //variables
	var property vehiculo = moto
	var property peso = 65

 // metodos funcionales
	method pesoTotal() {
		return peso + vehiculo.peso()
	}

	method puedeLlamar() {
		return false
	}
}
// Vehiculos de Sara

object moto {
	method peso() {
	  return 100
	}
}

object camion {
 // variables
	var acoplados = 0
 // metodos funcionales
	method acoplados(_acoplados) {
	  acoplados = _acoplados
	}

	method peso() {
		return 500 + (500 * acoplados)
	}
}

// Destinos posibles

object puenteBrooklin {
	method puedePasar(empleado){
		return empleado.pesoTotal() < 1000
	}
}

object matrix {
	method puedePasar(empleado) {
		return empleado.puedeLlamar()
	}
}