//
//  GameScene.swift
//  Breakout
//
//  Created by ckerr on 3/13/17.
//  Copyright © 2017 ckerr. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        createBackground()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
   
    func createBackground(){
        let stars = SKTexture(imageNamed: "stars")
        for i in 0...1{
            let starsBackrgound = SKSpriteNode(texture: stars)
            starsBackrgound.zPosition = -1
            starsBackrgound.position = CGPoint(x: 0, y: starsBackrgound.size.height * CGFloat (i))
            addChild(starsBackrgound)
            let moveDown = SKAction.moveBy(x: 0, y: -starsBackrgound.size.height, duration: 20)
            let moveReset = SKAction.moveBy(x: 0, y: starsBackrgound.size.height, duration: 0)
            let moveLoop = SKAction.sequence([moveDown, moveReset])
            let moveForever = SKAction.repeatForever(moveLoop)
            starsBackrgound.run(moveForever)
        }
    }
    
    
    
    
    
    
   }
