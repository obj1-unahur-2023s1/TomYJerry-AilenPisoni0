import ratones.*

object tom{
	var energia = 80
	
	var posicion = 0
  
 	method posicion() = posicion
	
	method energia() = energia
	
	method velocidad() = 5 + (energia / 10)
	
	method correrA(raton){
		const distanciaARecorrer = (raton.posicion() -  posicion).abs()
		const energiaNecesaria = distanciaARecorrer * 0.5 * self.velocidad()
		energia -= energiaNecesaria
		posicion = raton.posicion()
	}
	
	method esMasVeloz(raton) = raton.velocidad() < self.velocidad()
}