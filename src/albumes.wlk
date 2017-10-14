
class Album {
	const titulo
	var canciones = #{}
	var unidadesVendidas = 0
	var unidadesFabricadas = 0
	const fechaDeLanzamiento
	constructor(_titulo, _canciones, _unidadesVendidas, 
		_unidadesFabricadas, _fechaDeLanzamiento) {
		fechaDeLanzamiento = _fechaDeLanzamiento
		titulo = _titulo
		canciones = _canciones
		unidadesVendidas = _unidadesVendidas
		unidadesFabricadas = _unidadesFabricadas
	}
	method canciones() = canciones
	method canciones(_canciones) {
		canciones = _canciones
	}
	method agregarCancion(cancion) {
		canciones.add(cancion)
	}
	method agregarCanciones(_canciones) {
		canciones.addAll(_canciones)
	}
	method cancionMasLarga() {
		return canciones.max{cancion => return cancion.duracionPorLetra()}
	}
	method tieneBuenasVentas() {
		return unidadesVendidas/unidadesFabricadas > 0.75
	}
}