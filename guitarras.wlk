
object fender {
	method valor() = 10
}
object gibson {
	var sana = true
	method valor() {
		if(sana)
			return 15
		return 5
	}
}