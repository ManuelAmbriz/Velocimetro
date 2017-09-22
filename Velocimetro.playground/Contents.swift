//: Playground - noun: a place where people can play

import UIKit
var bandera = 0 ;

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        
        self = velocidadInicial
    }
    
}

func ObtenerVelocidad (velocidades : Velocidades) -> String {
    switch velocidades{
    case Velocidades.Apagado:
            return "Apagado"
    case Velocidades.VelocidadBaja:
        return "Velocidad Baja"
    case Velocidades.VelocidadMedia:
        return "Velocidad Media"
    case Velocidades.VelocidadAlta:
        return "Velocidad Alta"
    
    }
    
}

class Auto {
    
    var Velocidad : Velocidades;
    
    init ( ){
        let velinicial = Velocidades.Apagado
        self.Velocidad = Velocidades(velocidadInicial: velinicial)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
      
        if(bandera > 0){
        switch Velocidad{
            case Velocidades.Apagado:
                bandera = 100
               Velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadBaja)
            case Velocidades.VelocidadBaja:
                bandera = 100
                Velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            case Velocidades.VelocidadMedia:
                bandera = 100
                Velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadAlta)
            case Velocidades.VelocidadAlta:
                bandera = 100
                Velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            }
        return (Velocidad.rawValue, ObtenerVelocidad(velocidades: Velocidad))
        }
        else {
            bandera = bandera+1;
             return (Velocidad.rawValue, ObtenerVelocidad(velocidades: Velocidad))
            
        }
        
    }
}


var Carro =  Auto()

for _  in 1...20 {
    let Cambio = Carro.cambioDeVelocidad( );
    print("\(Cambio.0)  \(Cambio.1)")
}




