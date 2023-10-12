import elementos.*
class Barrio {
	const elementos=[]
	
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	//metodos auxikiares
	method cantidadDeBuenos()= elementos.count({elemento=>elemento.esBuena()})
	method cantidadDeMalos()= elementos.count({elemento=>!elemento.esBuena()})
	//final de metodos auxiliares
	method esCopado()=self.cantidadDeBuenos()>self.cantidadDeMalos()
}
