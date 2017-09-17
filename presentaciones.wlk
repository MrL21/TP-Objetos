import musicos.*
import canciones.*
import lugares.*

object presentacionUno {
	const fecha= new date(20,4,2017)
	const lugar=lunaPark
	method fecha() = fecha
	method lugar() = lugar
	musicos=#{luis, joaquin, lucia}
	method costo() {
		return musicos.map({music => musico.cachet()}).sum()
	}
}
object presentacionDos {
	const fecha= new date(15,11,2017)
	const lugar=laTrastienda
	method fecha() = fecha
	method lugar() = lugar
	musicos=#{luis, joaquin, lucia}
	method costo() {
		return musicos.map({musico => musico.cachet()}).sum()
	}
}
