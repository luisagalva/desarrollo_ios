import UIKit
/*:
# Playground - Actividad 4
* Condicionales y Ciclos
* Funciones
* Enumareción
*/



/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
    var datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for numero in datos{

//: C) Encontrar los valores menores a 5
    if numero < 5 {
        print(numero)
}
}
/*:
### Funciones
A) Crea la función "suma" que reciba dos parámetros de tipo entero regresando la suma de ambos números.
*/
func suma(a: Int, b: Int) -> Int{
    return a+b
}
print(suma(a:2,b:3))
//: B) Crear la función "potencia" que reciba dos parámetros de tipo entero, el primer parámetro para el numero base y el segundo la potencia a elevar, regresando el resultado de la potencia.

func potencia(a: Int, b: Int) -> Int{
    var c = a
    var x = 1
    while x<b{
        c = c*a
        x = x+1
    }
    return c
}
print(potencia(a:2,b:3))
/*:
### Enumeraciones
A) Crea la enumaración "meses" para definir tipos de datos basados en los meses del año.
*/
enum meses{
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre}
//: B) Crear la función "numeroMes" que reciba el tipo de dato "meses" y regrese el numero del mes correspondiente
func numeroMes(mes: meses) -> Int{


//: C) Para regresar el numero de mes correspondiente utilizar la "switch"
    switch mes{
    case .Enero: return 1
    case .Febrero: return 2
    case .Marzo: return 3
    case .Abril: return 4
    case .Mayo: return 5
    case .Junio: return 6
    case .Julio: return 7
    case .Agosto: return 8
    case .Septiembre: return 9
    case .Octubre: return 10
    case .Noviembre: return 11
    case .Diciembre: return 12
    }

}
print(numeroMes(mes: .Febrero))
