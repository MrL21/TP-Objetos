class Lugar {
	method concurrido(fecha)= self.capacidad(fecha)>5000
	method capacidad(fecha)
}
object laTrastienda inherits Lugar {
	override method capacidad(fecha) {
		//Si es Sabado 700, sino 400
		return (if(fecha.dayOfWeek().equals(6))
			700 else 400)
	}
}
object lunaPark inherits Lugar {
	override method capacidad(fecha) = 9290
	
}