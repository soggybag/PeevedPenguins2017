//
//  Seal.swift
//  PeevedPenguins2017
//
//  Created by mitchell hudson on 4/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import SpriteKit

class Seal: SKSpriteNode {
    
    init() {
        let texture = SKTexture(imageNamed: "seal")
        let color = UIColor.clear
        let size = texture.size()
        
        super.init(texture: texture, color: color, size: size)
        
        physicsBody = SKPhysicsBody(circleOfRadius: size.width / 2)
        physicsBody?.categoryBitMask = 2
        physicsBody?.contactTestBitMask = 1
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        physicsBody = SKPhysicsBody(circleOfRadius: size.width / 2)
        physicsBody?.categoryBitMask = 2
        physicsBody?.contactTestBitMask = 1
        
        print(physicsBody)
    }
}
