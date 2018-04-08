//
//  GameScene.swift
//  Juego
//
//  Created by Luisa Beatriz Garcia Alva on 08/04/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        self.backgroundColor = UIColor.darkGray
        
        let fondo = SKSpriteNode(imageNamed: "fondo2")
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        fondo.zPosition = -1
        self.addChild(fondo)
        let num1 = SKSpriteNode(imageNamed: "1")
        num1.position = CGPoint(x: self.frame.midX, y:self.frame.midY)
        self.addChild(num1)
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in: self)
            print(location)
        }
    }
   
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
