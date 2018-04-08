//
//  LeerNoticias.swift
//  Prototipo
//
//  Created by Luisa Beatriz Garcia Alva on 08/04/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import Foundation

class LeerNoticias{
    
    
    
    func getNoticias(termino:@escaping (_ datos:[String])->()){
       
        let liga = "https://api.nytimes.com/svc/mostpopular/v2/mostviewed/Books/30.json?api-key=68cb1b58fcc546678389f5be2926cef5"
        //API key obtenida nuevamente
        let url = URL(string: liga)!
        URLSession.shared.dataTask(with: url) { (dato:Data?, respuesta:URLResponse?, error:Error?) in
            var titulos:[String] = []
            
            do{
                let resultado = try JSONSerialization.jsonObject(with: dato!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
                
                for valor in resultado["results"] as! [NSDictionary]{
                    titulos.append(valor["title"] as! String)
                }
                
                DispatchQueue.main.async {
                    termino(titulos)
                    print("Hola")
                }
            }catch{
                print("Error en lectura")
            }
            }.resume()
    }
    
}

