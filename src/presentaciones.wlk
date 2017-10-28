import musicos.*
import canciones.*
import lugares.*
/*
object presentacionUno {
	const fecha= new Date(20,4,2017)
	const lugar = lunaPark
	const musicos = #{luis, joaquin, lucia}
	method fecha() = fecha
	method lugar() = lugar
	method costo() {
		return musicos.map({unMusico => unMusico.cachet()}).sum()
	}
}
object presentacionDos {
	const fecha = new Date(15,11,2017)
	const lugar = laTrastienda
	const musicos = #{luis, joaquin, lucia}
	method fecha() = fecha
	method lugar() = lugar
	method costo() {
		return musicos.map({unMusico => unMusico.cachet()}).sum()
	}
}
*/
class Presentacion {
	const fecha
	const lugar
	var musicos
	constructor(_fecha, _lugar) {
		fecha = _fecha
		lugar = _lugar
	}
	constructor(_fecha, _lugar, _musicos) = self(_fecha, _lugar) {
		self.musicos(_musicos)
	}
	method fecha() = fecha
	method lugar() = lugar
	method costo() {
		return musicos.map({unMusico => unMusico.cachet(self)}).sum()
	}
	method musicos(_musicos) {
		musicos = #{}
		_musicos.forEach{musico=>self.agregarMusico(musico)}
	}
	method agregarMusico(musico) {
		musicos.add(musico)
	}
}

class Restriccion {
	const mensajeDeError
	const restriccionACUmplir
	constructor(_mensaje, _restriccionACUmplir) {
		mensaje = _mensaje
		restriccionACUmplir = _restriccionACUmplir
	}
	method cumple(musico) {
		return restriccionACUmplir.apply(musico)
	}
	method mensajeDeError() = mensajeDeError
}
class PresentacionConRestricciones inherits Presentacion {
	var restricciones
	constructor(_restricciones, _fecha, _lugar, _musicos) = self(_fecha, _lugar) {
		restricciones = _restricciones
		self.musicos(_musicos)
	}
	override method agregarMusico(musico) {
		restricciones.forEach{ restriccion =>
			if(not restriccion.cumple(musico))
				error.throwWithMessage(restriccion.mensajeDeError())
		}
		super(musico)
	}
}
//object presentacionUno inherits Presentacion(new Date(20,4,2017), lunaPark, #{luis, joaquin, lucia}) {}
//object presentacionDos inherits Presentacion(new Date(15,11,2017), laTrastienda, #{luis, joaquin, lucia}) {}

//const presentacionUno = new Presentacion(new Date(20,4,2017), lunaPark, #{luis, joaquin, lucia})
//const presentacionDos = new Presentacion(new Date(15,11,2017), laTrastienda, #{luis, joaquin, lucia})