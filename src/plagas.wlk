class Plaga{
	var poblacion
	method transmiteEnfermedades()= poblacion>=10 and self.condicionAdicional()
	method condicionAdicional()//metodo abstracto
	method efectoDelAtaque(){poblacion+=poblacion*0.10}
	method atacarElemento(unElemento){
		unElemento.ataqueDePlaga(self)
		self.efectoDelAtaque()
	}
}
class Cucarachas inherits Plaga {
	var pesoPromedio
	method nivelDeDanio()=poblacion/2
	//override method transmiteEnfermedades()= pesoPromedio>=10 and super() //forma de hacerlo con super
	override method condicionAdicional() =pesoPromedio>=10
	override method efectoDelAtaque(){super() pesoPromedio=+2}
}

 class Pulgas inherits Plaga{
 	method nivelDeDanio()=poblacion*2
 	override method condicionAdicional() =true
 	
 }
 
  class Garrapatas inherits Pulgas{
	override method efectoDelAtaque(){poblacion+=poblacion*0.20}
 }
 
 class Mosquitos inherits Plaga{
 	method nivelDeDanio()=poblacion
 	override method condicionAdicional() =poblacion % 3 == 0
 }