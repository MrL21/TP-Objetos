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