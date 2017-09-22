import guitarras.*

object joaquin {
	var grupo = "Pimpinela"
	method habilidad() {
		if(self.estaEnGrupo())
			return 25
		return 20
	}
	method estaEnGrupo(){
		return grupo!=""
	}
	method dejaGrupo(){
		grupo =""
	}
	method puedeInterpretar(cancion) {
		return cancion.duracion() > 300
	}
	method cachet(presentacion) {
		if(presentacion.lugar().capacidad() > 5000)
			return 500
		return 400
	}
}
object lucia {
	var grupo = "Pimpinela"
	const fechaSentinela = new Date(1,9,2017)
	method habilidad() {
		if(self.estaEnGrupo())
			return 50
		return 70
	}
	method estaEnGrupo(){
		return grupo!=""
	}
	method dejaGrupo(){
		grupo =""
	}
	method puedeInterpretar(cancion) {
		return cancion.letra().contains("familia")|| cancion.letra().contains("Familia") 
	}
	method cachet(presentacion) {
		if(presentacion.fecha() > fechaSentinela)
			return 1200
		return 1000
	}
}

object luis {
	var guitarra = fender
	const fechaSentinela = new Date(1,9,2017)
	method guitarra(nuevaGuitarra) {
		guitarra=nuevaGuitarra
	}
	method habilidad() = 8*guitarra.valor()
	method puedeInterpretar(cancion) = true
	method cachet(presentacion) {
		if(presentacion.lugar().capacidad() > 5000)
			return 500
		return 400
	}
}
