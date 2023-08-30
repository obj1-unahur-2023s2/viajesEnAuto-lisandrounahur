/*
 * definir remiseras y clientes.
 */
import remiseras.*

object ludmila {
	method precioPorKilometro(){
		return 18
	}
}


object melina {
	var cliente
	
	method cliente(clienteATrabajar){
		if(self == clienteATrabajar){
			self.error("No puede trabajar para si misma")
		}
		cliente = clienteATrabajar
	}
	method precioPorKilometro() = cliente.precioPorKilometro() - 3
}

object teresa {
	var property precioPorKilometro = 22
	
}

object anaMaria {
	var esEstable = true
	
	method estaEconomicamenteEstable(){
		return esEstable
	}
	
	method cambiarEconomicamenteEstable(){
		esEstable = !esEstable
	} 
	
	method precioPorKilometro(){
		if(esEstable){
			return 30
		}
		else {
			return 25
		}
	}
	
}