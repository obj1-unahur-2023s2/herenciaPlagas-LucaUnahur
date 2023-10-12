import plagas.*
class Hogar{
	var property nivelDeMugre
	var property confort
	
	method esBuena() = nivelDeMugre <= (confort/2)
	method ataqueDePlaga(plaga){
		nivelDeMugre+=plaga.nivelDeDanio()
	}
}

class Huerta{
	var produccion
	method esBuena() = produccion>nivelDeProduccion.valorDelNivel()
	method ataqueDePlaga(plaga){
		if(plaga.transmiteEnfermedades()) produccion= (0.max(produccion - (plaga.nivelDeDanio() * 0.1 + 10)))
	 		else  produccion= 0.max(produccion - plaga.nivelDeDanio() * 0.1) 
	}
}

object nivelDeProduccion{
 	var property valorDelNivel=100
 }
 
class Mascota{
	var property nivelDeSalud
	
	method esBuena()= nivelDeSalud>250
	method ataqueDePlaga(plaga){
		 if (plaga.transmiteEnfermedades()) nivelDeSalud = 0.min(nivelDeSalud-plaga.nivelDeDanio()) }
}
