
object laTrastienda {
	method capacidad(presentacion) {
		if(presentacion.fecha().sabado())
			return 700
		else
			return 400
	}
}
object lunaPark {
	method capacidad(presentacion) = 9290
}