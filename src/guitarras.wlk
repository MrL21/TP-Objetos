class Guitarra { 
	method valor()
}
object fender inherits Guitarra {
	override method valor() = 10
}
object gibson inherits Guitarra {
	var sana = true
	override method valor() {
		if(sana)
			return 15
		return 5
	}
	method malTratar(){
		sana = false
	}
	method reparar(){
		sana = true
	}
}