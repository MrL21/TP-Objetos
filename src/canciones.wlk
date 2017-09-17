
/*
 * object cisne {
	const duracion = 312
	const letra = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"
	method letra() = letra
	method duracion() = duracion
}
object laFamilia {
	const duracion = 264
	const letra = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
	method letra() = letra
	method duracion() = duracion
}
*/
class Cancion {
	const duracion
	const letra
	constructor(unaDuracion, unaLetra) {
		duracion = unaDuracion
		letra = unaLetra
	}
	method letra() = letra
	method duracion() = duracion
}
//const cisne = new Cancion(312, "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar")
//const laFamilia = new Cancion(264, "Quiero brindar por mi gente sencilla, por el amor brindo por la familia")
