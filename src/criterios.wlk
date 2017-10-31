class Criterio{
	method criterio(cancion)
	method cancionMasLarga(canciones){
		return canciones.max({cancion=>self.criterio(cancion)})
	}
}


object duracion inherits Criterio{
	override method criterio(cancion){
		return cancion.duracion()
	}
}

object duracionPorLetra inherits Criterio{
	override method criterio(cancion){
		return	cancion.duracionPorLetra()
	}
}

object titulo inherits Criterio{
	override method criterio(cancion){
		return cancion.titulo().lenth()
	}
}