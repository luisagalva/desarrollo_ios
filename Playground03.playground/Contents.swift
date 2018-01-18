import UIKit
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*: 
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/
var a = 1
var b = 1.5
var c:String = "Hola"
var d = "Hola"
/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
let e = "Hola"
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.
let f = 5
/*: 
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var numeros:Array<Int> = Array<Int>()
numeros.append(1)
numeros.append(2)
numeros.append(3)
numeros.append(4)
numeros.append(5)
numeros.append(6)
numeros.append(7)
numeros.append(8)
numeros.append(9)
numeros.append(10)
//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
var diasSemana:Dictionary<Int, String> = Dictionary<Int, String>()
diasSemana = [1:"Lunes"]
diasSemana = [2:"Martes"]
diasSemana = [3:"Miercoles"]
diasSemana = [4:"Jueves"]
diasSemana = [5:"Viernes"]
diasSemana = [6:"Sábado"]
diasSemana = [7:"Domingo"]
/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
var datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for num in datos{

//: C) Encontrar los valores menores a 5
    if num < 5 { print(num)  }
}



