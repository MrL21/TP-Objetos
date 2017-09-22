
object laTrastienda {
	method capacidad(fecha) {
		if(fecha.dayOfWeek().equals(6))
			return 700
		else
			return 400
	}
	method concurrido(fecha)= self.capacidad(fecha)>5000
}
object lunaPark {
	method capacidad(fecha) = 9290
	method concurrido(fecha)= self.capacidad(fecha)>5000
	
}