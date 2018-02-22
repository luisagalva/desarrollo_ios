import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
func Impuesto(arreglo:[Float])->[Float]{
    
    var resultado:[Float] = []
  
    for num in arreglo{
        resultado.append(num * 1.16)
    }
    
    return resultado
}
var costo_referencia:[Float] = [8.3,10.5,9.9]
Impuesto(arreglo: costo_referencia)




//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
let Suma = {(x: Int, y: Int) -> Int in return x+y}

func SumaTres(a: Int, b: Int, c: Int ) -> Int{
    return Suma(a,b) + c
}

SumaTres(a: 2, b: 3, c: 4)


/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
func Intercambiar<T>(primer: T, segundo: T) ->(T,T){
    let primera = segundo
    let segunda = primer
    return (primera,segunda)
}

Intercambiar(primer: 1, segundo: 3)
Intercambiar(primer: "Hola", segundo: "Adios")

//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
extension Array{
    
    func transformar(arreglo:[Int]) ->[Int]
    {
       
        var cuenta = 0
        var respuesta:[Int] = []
        for index in arreglo{
            var a = index
            respuesta.append(a + a)
            cuenta += 1
        }
        return respuesta
    }
}

var datos = [3,7,9,2]
datos.transformar(arreglo: datos)

/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios = [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map{a in return a * 1.16}
impuesto


//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var precio_menor = impuesto.filter{a in a > 6.0}
precio_menor




