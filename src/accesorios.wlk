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