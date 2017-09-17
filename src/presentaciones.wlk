import musicos.*
import canciones.*
import lugares.*

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
