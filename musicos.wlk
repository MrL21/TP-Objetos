import guitarras.*

object luis {
	var guitarra=fender
	method guitarra(nuevaGuitarra) {
		guitarra=nuevaGuitarra
	}
	method habilidad() = 8*guitarra.valor()
	method puedeInterpretar(cancion) = true
	cachet(presentacion) {
		if(presentacion.fecha() > septiembre2017)
			return 1200
		return 1000
	}
}
object lucia {
	var grupo="Pimpinela"
	method habilidad() = {
		if(grupo.equals(nil))
			return 50
		return 70
	}
	method puedeInterpretar(cancion) {
		return cancion.duracion() > 300
	}
	cachet(presentacion) {
		if(presentacion.fecha() > septiembre2017)
			return 1200
		return 1000
	}
}

object joaquin {
	var grupo="Pimpinela"
	method habilidad(presentacion) = {
		if(presentacion.musicos().length() > 1)
			return 25
		return 20
	}
	method puedeInterpretar(cancion) {
		return cancion.letra().substring("familia")
	}
	cachet(presentacion) {
		if(presentacion.lugar().capacidad() > 5000)
			return 500
		return 400
	}
}
