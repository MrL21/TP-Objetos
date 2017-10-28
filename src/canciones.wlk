class Cancion {
	const duracion
	const letra
	const titulo
	constructor(unaDuracion, unTitulo, unaLetra) {
		duracion = unaDuracion
		letra = unaLetra
		titulo = unTitulo
	}
	method letra() = letra
	method titulo() = titulo
	method duracion() = duracion
	method corta() = duracion < 180
	method duracionPorLetra() = letra.length()
	method letraContiene(palabra) = letra.toLowerCase().contains(palabra)
}


class Remix inherits Cancion{
	const cancionOriginal
	constructor(unaDuracion, unTitulo, unaLetra,_cancionOriginal) = super(unaDuracion, unTitulo, unaLetra){
		cancionOriginal=_cancionOriginal
	}	
	override method letra(){
		return "mueve tu cuelpo baby "+ cancionOriginal.letra() +" yeah oh yeah"
	}
	override method duracion(){
		return cancionOriginal.duracion() * 3
	}
}

class MashUp inherits Cancion{
	const cancionesOriginales
	constructor(unaDuracion, unTitulo, unaLetra,_cancionesOriginales) = super(unaDuracion, unTitulo, unaLetra){
		cancionesOriginales=_cancionesOriginales
	}	
	override method letra(){
		return cancionesOriginales.fold("",{letraMashUp,cancion=> letraMashUp+cancion.letra() + " "}).trim()
	}
	override method duracion(){
		return cancionesOriginales.max({cancion=>cancion.duracion()})
	}
	
}

