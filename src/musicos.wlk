import guitarras.*

class Musico {
	method habilidad()
	method puedeInterpretar(cancion)
	method cachet(presentacion)
}

object joaquin inherits Musico {
	var grupo = "Pimpinela"
	var solo = false
	override method habilidad() {
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
	override method puedeInterpretar(cancion) {
		return cancion.duracion() > 300
	}
	override method cachet(presentacion) {
		if(solo)
			return 100
		return 50
	}
}
object lucia inherits Musico {
	var grupo = "Pimpinela"
	override method habilidad() {
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
	override method puedeInterpretar(cancion) {
		return cancion.letra().contains("familia")|| cancion.letra().contains("Familia") 
	}
	override method cachet(presentacion) {
		if(presentacion.lugar().concurrido(presentacion.fecha()))
			return 500
		return 400
	}
}

object luis inherits Musico {
	var habilidad
	var guitarras = #{fender,gibson}
	const fechaSentinela = new Date(1,9,2017)
	override method habilidad()=habilidad
	override method puedeInterpretar(cancion) = true
	override method cachet(presentacion) {
		if(presentacion.fecha() > fechaSentinela)
			return 1200
		return 1000
	}
	method toca(guitarra){
		if (guitarras.contains( guitarra)){
			habilidad = (8 * (guitarra.valor())).min(100)
		}
	}
}
