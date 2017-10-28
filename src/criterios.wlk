


object duracion{
	method cancionMasLarga(canciones){
		return canciones.max({cancion=>cancion.duracion()})
	}
}

object duracionPorLetra{
	method cancionMasLarga(canciones){
		return canciones.max({cancion=>cancion.duracionPorLetra()})
	}
}

object titulo{
	method cancionMasLarga(canciones){
		return canciones.max({cancion=>cancion.titulo().lenth()})
	}
}