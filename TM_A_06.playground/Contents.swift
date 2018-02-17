import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator +*

func +*(a:Int, b:Int)->Int{
    var c = a
  var x = 1
    while x<b{
     c = c*a
            x = x+1
   }
   return c
}

2+*2
2+*5


//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
prefix operator |>

prefix func |>(array:[Int])->[Int]{
    
    guard array.count > 1 else { return array }  // 1
    
    var a = array                    // 2
    
    for x in 0 ..< a.count - 1 {     // 3
        
        var lowest = x
        for y in x + 1 ..< a.count {   // 4
            if a[y] < a[lowest] {
                lowest = y
            }
        }
        
        if x != lowest {               // 5
            a.swapAt(x, lowest)
        }
    }
    return a
}

var datos = [2,5,3,4]

|>datos





/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
class Cantidad
{
    var valores:[Int]
    init(v:[Int])
    {
        self.valores = v
    }
    subscript(idx:Int) -> Int
    {
        get{
            return valores[idx] * 2
        }
        set(nuevoValor){
            valores[idx] = nuevoValor
        }
    }
}

let array = [2,3,4,5]
let v1 = Cantidad(v: array)
v1[2]



//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct Enemigo
{
    var posicion: CGPoint
    
       init(posicion: CGPoint)
    {
        self.posicion = posicion
    }
    subscript() -> CGPoint
    {
        get{
            return posicion
        }
        set(nuevoValor){
            posicion = nuevoValor
        }
    }
}

let enemy = (0,0)
enemy

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let colection = ["A":1, "B":2,"C":3]

func ExisteValor(idx:String){
    
    guard let existe = colection[idx] else {
        print("no existe")
    return
    }
    print("existe \(existe)")
    
}

ExisteValor(idx: "A")







