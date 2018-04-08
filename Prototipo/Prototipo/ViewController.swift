//
//  ViewController.swift
//  Prototipo
//
//  Created by Luisa Beatriz Garcia Alva on 21/02/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipoGesto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(_:)))
        
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(accionGesto(_:)))
        
        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }

   @objc func accionGesto(_ sender: UIGestureRecognizer){
        
    if sender.isKind(of:UITapGestureRecognizer.self){
            tipoGesto.text = "Tap"
        }
        if sender.isKind(of:UISwipeGestureRecognizer.self){
            tipoGesto.text = "Swipe"
        }
        
        animacion()
    }
    
    func animacion(){
        
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
        }) { _ in
            self.tipoGesto.alpha = 0.0
        }
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

