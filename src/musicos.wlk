import guitarras.*

object joaquin {
	var grupo = "Pimpinela"
	var solo = false
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
	method solo(){
		solo=true
	}
	method grupo(){
		solo=false
	}
	method puedeInterpretar(cancion) {
		return cancion.duracion() > 300
	}
	method cachet(presentacion) {
		if(solo)
			return 100
		return 50
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
		if(presentacion.lugar().concurrido(presentacion.fecha()))
			return 500
		return 400
	}
}

object luis {
	var habilidad
	var guitarras = #{fender,gibson}
	const fechaSentinela = new Date(1,9,2017)
	method toca(guitarra){
		if (guitarras.contains( guitarra)){
			habilidad = (8 * (guitarra.valor())).min(100)
		}
	}
	method habilidad()=habilidad
	method puedeInterpretar(cancion) = true
	method cachet(presentacion) {
		if(presentacion.fecha() > fechaSentinela)
			return 1200
		return 1000
	}
}
