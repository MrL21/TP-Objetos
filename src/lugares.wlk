
object laTrastienda {
	method capacidad(presentacion) {
		if(presentacion.fecha().dayOfWeek().equals(6))
			return 700
		else
			return 400
	}
	method concurrido(presentacion)= self.capacidad(presentacion)>5000
}
object lunaPark {
	method capacidad(presentacion) = 9290
	method concurrido(presentacion)= self.capacidad(presentacion)>5000
	
}