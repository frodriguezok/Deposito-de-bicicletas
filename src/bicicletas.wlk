import accesorios.*
class Bicicleta {
	var property rodado
	var property largo
	var property marca
	const accesorios = []
	
	method instalarAccesorios(cosa){accesorios.add(cosa)}
	method altura(){return self.rodado()*2.5+15}
	method velocidadCrucero(){
		return if(self.largo()>120){self.rodado() + 6}
		else {self.rodado()+2}
	}
	method carga(){return accesorios.sum({ac=>ac.carga()})}
	
	method peso(){return self.rodado()/2 + accesorios.sum({ac=>ac.peso()})}
	method tieneLuz(){return accesorios.any({ac=>ac.luminoso()})}
	method accesoriosLivianos(){
		return accesorios.count({ac=>ac.peso()<1})
	}
	method tieneAccesorios(){
		return not accesorios.isEmpty()
	}
}

// RESPUESTA A LA PREGUNTA:
//Para poder agregar nuevos tipos de accesorios, es necesario
//crear un objeto o clase que hagan referencia a estos y
//que entiendan los mismos mensajes que el resto de ellos
//para que sean polimórficos entre si, y respeten el contrato con las instancias 
//creadas de la clase bicicleta.