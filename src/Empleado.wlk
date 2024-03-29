import Frutas.*

class Empleado {
	var tareasRealizadas = []
	var rol
	var estamina
	
	method cantidadDeOjos()
	
	method comerFruta(unaFruta)
	
	method cambiarRol(unRol)
	
	method esUtilPara(unTarea)
	
	method experiencia() = tareasRealizadas.size() * self.sumatoriaDeDificultades()
	
	method sumatoriaDeDificultades(){
		return tareasRealizadas.sum({	tarea => tarea.dificultad(self)	 })
	}
	
	method esCiclope(){
		return self.cantidadDeOjos() == 1
	}
		
		
}

class Biclope inherits Empleado{
	
	override method cantidadDeOjos() = 2
	
	override method comerFruta(unaFruta){
		estamina = (estamina + unaFruta.estaminaQueAporta()).min(10)
	}
}

class Ciclope inherits Empleado{
	
	override method cantidadDeOjos() = 1
	
	override method comerFruta(unaFruta){
		estamina += unaFruta.estaminaQueAporta()
	}
}


