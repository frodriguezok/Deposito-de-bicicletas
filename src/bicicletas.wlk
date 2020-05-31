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


object farolito {
	method peso(){return 0.5}
	method carga(){return 0}
	method luminoso(){return true}
}

class Canasto {
	var volumen
	method ingresarVolumen(vol){volumen = vol}
	method peso(){return volumen/10}
	method carga(){return volumen * 2}
	method luminoso(){return false}
}

class MorralDeBici{
	var property largo
	var ojoDeGato
	method poseeOjoDeGato(siono){ojoDeGato = siono}
	method peso(){return 1.2}
	method carga(){return self.largo()/3}
	method luminoso(){return ojoDeGato}

}
// RESPUESTA A LA PREGUNTA:
//Para poder agregar nuevos tipos de accesorios, es necesario
//crear un objeto o clase que hagan referencia a estos y
//que entiendan los mismos mensajes que el resto de ellos
//para que sean polimórficos entre si, y respeten el contrato con las instancias 
//creadas de la clase bicicleta.