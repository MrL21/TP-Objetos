import guitarras.*

class Musico {
	var grupo = ""
	var habilidad = 0
	var albumes = #{}
	constructor(_habilidad) {
		habilidad = _habilidad
	}
	constructor(_habilidad, _grupo) = self(_habilidad) {
		grupo = _grupo
	}
	constructor(_habilidad, _grupo, _albumes)  = self(_habilidad, _grupo) {
		albumes = _albumes
	}
	method habilidad()=habilidad
	method habilidad(_habilidad) {
		habilidad =_habilidad
	}
	method solista() {
		return grupo!=""
	}
	method estaEnGrupo() {
		return grupo!=""
	}
	method dejarGrupo() {
		grupo =""
	}
	method unirseAGrupo(_grupo) {
		grupo =_grupo
	}
	method albumes() = albumes
	method agregarAlbum(album) {
		albumes.add(album)
	}
	method agregarAlbumes(_albumes) {
		albumes.addAll(_albumes)
	}
	method albumes(_albumes) {
		albumes = _albumes
	}
	method canciones () {
		var canciones = #{}
		albumes.forEach{album => canciones.addAll(album.canciones())}
		return canciones
	}
	method compusoAlgunaCancion() {
		return self.canciones().size() >0
	}
	method cancionesConPalabra(palabra) {
		return self.canciones().filter{cancion => return cancion.letraContiene(palabra)}
	}
	method duracionObraMaestra() {
		return self.canciones().map{cancion => return cancion.duracion()}.sum()
	}
	method laPego() = albumes.all{album => return album.tieneBuenasVentas()}
	method minimalista() {
		return self.canciones().all{
			cancion => return cancion.corta()
		}
		/* Alternativa sin crear conjunto de canciones
		  (Opte por el de arriba ya que utilizo el any en ves de implementarlo yo mismso)
		var minimalista = true
		albumes.forEach{album => 
			album.forEach{cancion => 
				if(cancion.duracion() >= duracionCancionCortaEnMinutos*60)
					minimalista=false
			}
		}
		return
		*/
	}
	method puedeInterpretar(cancion) {
		return self.canciones().contains(cancion) or self.habilidad()>60
	}
	method cachet(presentacion)
}

class MusicoDeGrupo inherits Musico {
	const plusPorGrupo
	constructor(_habilidad, _plusPorGrupo) = super(_habilidad) {
		plusPorGrupo = _plusPorGrupo
	}
	constructor(_habilidad, _grupo, _plusPorGrupo) = super(_habilidad, _grupo) {
		plusPorGrupo = _plusPorGrupo
	}
	constructor(_habilidad, _grupo, _albumes, _plusPorGrupo) = 
	super(_habilidad, _grupo, _albumes) {
		plusPorGrupo = _plusPorGrupo
	}
	override method habilidad() {
		if(self.estaEnGrupo())
			return habilidad+plusPorGrupo
		return habilidad
	}
	override method puedeInterpretar(cancion) {
		return super(cancion) or cancion.duracion() > 300
	}
	override method cachet(presentacion) {
		if(self.estaEnGrupo())
			return 50
		return 100
	}
}
class VocalistaPopular inherits Musico {
	const palabraInspiradora
	const restoPorGrupo = 20
	constructor(_habilidad, _palabraInspiradora) = super(_habilidad) {
		palabraInspiradora = _palabraInspiradora
	}
	constructor(_habilidad, _grupo, _palabraInspiradora) = 
	super(_habilidad, _grupo) {
		palabraInspiradora = _palabraInspiradora
	}
	constructor(_habilidad, _grupo, _albumes, _palabraInspiradora) = 
	super(_habilidad, _grupo, _albumes) {
		palabraInspiradora = _palabraInspiradora
	}
	override method habilidad() {
		if(self.estaEnGrupo())
			return habilidad - restoPorGrupo
		return habilidad
	}
	method dejaGrupo(){
		grupo =""
	}
	override method puedeInterpretar(cancion) {
		return super(cancion) or cancion.letraContiene(palabraInspiradora)
	}
	override method cachet(presentacion) {
		if(presentacion.lugar().concurrido(presentacion.fecha()))
			return 500
		return 400
	}
}
object luis inherits Musico(80, "", #{})  {
	//Los instrumentos que tiene LuisAlberto
	var instrumentos = #{fender,gibson} 
	const fechaSentinela = new Date(1,9,2017)
	override method habilidad()=habilidad
	override method puedeInterpretar(cancion) = true
	override method cachet(presentacion) {
		if(presentacion.fecha() > fechaSentinela)
			return 1200
		return 1000
	}
	method tocar(instrumento) {
		if (instrumentos.contains(instrumento)) {
			habilidad = (8 * (instrumento.valor())).min(100)
		}
	}
}
