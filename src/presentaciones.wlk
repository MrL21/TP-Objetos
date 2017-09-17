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
	const musicos
	constructor(_fecha, _lugar, _musicos) {
		fecha = _fecha
		lugar = _lugar
		musicos = _musicos
		
	}
	method fecha() = fecha
	method lugar() = lugar
	method costo() {
		return musicos.map({unMusico => unMusico.cachet()}).sum()
	}
	
}
//const presentacionUno = new Presentacion(new Date(20,4,2017), lunaPark, #{luis, joaquin, lucia})
//const presentacionDoss = new Presentacion(new Date(15,11,2017), laTrastienda, #{luis, joaquin, lucia})