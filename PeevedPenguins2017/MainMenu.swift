//
//  MainMenu.swift
//  PeevedPenguins2017
//
//  Created by mitchell hudson on 4/6/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    
    /* UI Connections */
    var buttonPlay: MSButtonNode!
    
    override func didMove(to view: SKView) {
        /* Setup your scene here */
        
        /* Set UI connections */
        buttonPlay = self.childNode(withName: "buttonPlay") as! MSButtonNode
    
        /* Setup restart button selection handler */
        buttonPlay.selectedHandler = {
        
            /* Grab reference to our SpriteKit view */
            guard let skView = self.view as SKView! else {
                print("Could not get Skview")
                return
            }
            
            /* Load Game scene */
            guard let scene = GameScene(fileNamed:"GameScene") else {
                print("Could not make GameScene, check the name is spelled correctly")
                return
            }
            
            /* Ensure correct aspect mode */
            scene.scaleMode = .aspectFill
            
            /* Show debug */
            skView.showsPhysics = true
            skView.showsDrawCount = true
            skView.showsFPS = true

            /* Start game scene */
            skView.presentScene(scene)
        }
    }
}
