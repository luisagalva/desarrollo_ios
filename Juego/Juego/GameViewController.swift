//
//  GameViewController.swift
//  Juego
//
//  Created by Luisa Beatriz Garcia Alva on 08/04/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ancho =  750
        let alto = 1334
        
        let scene = GameScene(size: CGSize(width: ancho, height: alto))
        
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }

   
}
