import bicicletas.*
class Deposito {
	const bicis = []
	method agregarBicicletas(bici){bicis.add(bici)}
	method bicisRapidas(){return bicis.filter({bi=>bi.velocidadCrucero()>25})}
	method marcas(){
		return bicis.map({bi=>bi.marca()}).asSet()
	}
	method esNocturno(){
		return bicis.all({bi=>bi.tieneLuz()})
	}
	
	method tieneBicicleta(kilo){
		return bicis.any({bi=>bi.carga()>kilo})
	}
	
	method marcaBiciRapida(){
		return bicis.max(({bi=>bi.velocidadCrucero()})).marca()
	}
	
	method cargaBicisLargas(){
	var biciLarga =[]
	biciLarga = bicis.filter({bi=>bi.largo()>170})
	return biciLarga.sum({bi=>bi.carga()})
	}
	
	method cantidadSinAccesorios(){
		return bicis.count({bi=>not bi.tieneAccesorios()})
	}
	
	method companieras(bici){
	var biciCompa = []
	biciCompa = bicis.filter({b=>b.marca()==bici.marca()
	and b.largo() - bici.largo() <=10})
	biciCompa.remove(bici)
	return biciCompa
	}
	
}
