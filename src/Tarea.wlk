class Tarea{
	var empleadoAsignado
	
	method dificultad()
		
}

class Arreglar inherits Tarea{
	
	var complejidad
	var herramientasNecesarias
	
	override method dificultad() = complejidad * 2
}

object limpiar inherits Tarea{
	var property dificultad //	method dificultad() = dificultad
	

	
}

class Defender inherits Tarea{
	 var gradoDeAmenaza
	 
	override method dificultad() {
		if(empleadoAsignado.esCiclope()){
			return  gradoDeAmenaza*2
		}
		else
		{
			return gradoDeAmenaza
		}
	}
	
} 