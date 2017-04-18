//
//  GameScene.swift
//  PeevedPenguins2017
//
//  Created by mitchell hudson on 4/4/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    /* Game object connections */
    var catapultArm: SKSpriteNode!
    /* Level loader holder */
    var levelNode: SKNode!
    
    override func didMove(to view: SKView) {
        /* Set reference to catapultArm node */
        catapultArm = childNode(withName: "catapultArm") as! SKSpriteNode
        levelNode = childNode(withName: "levelNode")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Make a Penguin
        let penguin = Penguin()
        
        // Add the penguin to this scene
        addChild(penguin)
        
        /* Move penguin to the catapult bucket area */
        penguin.position.x = catapultArm.position.x + 32
        penguin.position.y = catapultArm.position.y + 50
        
        /* Impulse vector */
        let launchImpulse = CGVector(dx: 400, dy: 0)

        /* Apply impulse to penguin */
        penguin.physicsBody?.applyImpulse(launchImpulse)
    }
    
    override func update(_ currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}










