object roxana {
	method precioViaje(cliente, kms){
		return cliente.precioPorKilometro() * kms
	}
}


object gabriela {
	method precioViaje(cliente, kms){
		const monto = cliente.precioPorKilometro() * kms
		return monto * 1.2
	}
}

object mariela {
	method precioViaje(cliente, kms){
	   return 50.max(cliente.precioPorKilometro() * kms)
	}
}

object juana {
	method precioViaje(_, kms){
		if(kms > 8){
			return 200
		} else {
			return 100
		}
	}
}

object lucia {
	var remiseraSustituida
	
	method remiseraSustituida(remisera) {
		if(self == remisera){
			self.error("No puede reemplazarse a si misma")
		}
		remiseraSustituida = remisera
	}
	
	method precioViaje(cliente,kms) = remiseraSustituida.precioViaje(cliente, kms)
}
